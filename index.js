import http from 'node:http' // es para crear el servidor
import fs from 'node:fs/promises' // para manejar archivos de manera asíncrona
import path from 'node:path' //  maneja rutas de archivos
import mysql2 from 'mysql2' // interactua con la base de datos MySQL

// Conexion a la base de datos MYSQL
const pool = mysql2.createPool({
  host: 'localhost', // Dirección al servidor de la bd.
  user: 'root', // Nombre de usuario de la bd.
  password: '', // Contraseña de la bd.
  database: 'mproyect' // Nombre de la bd.
})
// funcion para obtener la lista de usuarios desdes la bd.
const listaUsuarios = async () => {
  const [rows] = await pool.promise().query('SELECT * FROM empleados')
  return rows
}

// para exportar usuarios a un archivo csv.
const expUsuario = async () => {
  try {
    // Se Obtiene la lista de usuarios de la bd.
    const usuarios = await listaUsuarios()
    // Se Crea una cadena csv con datos de los usuarios.
    const csvData = usuarios.map(usuario => `${usuario.id},${usuario.nombres},${usuario.apellidos},${usuario.direccion},${usuario.correo_electronico},${usuario.dni},${usuario.edad},${usuario.fecha_creacion},${usuario.telefono}`).join('\n')
    // Escribir los datos csv en un archivo usuarios.csv
    await fs.writeFile('usuarios.csv', csvData)
    // Imprime mensaje de éxito en la consola
    console.log('Usuarios exportados a usuarios.csv')
  } catch (err) {
    // Maneja el error al exportar usuarios a csv.
    console.error('Error al exportar usuarios a CSV:', err)
    throw err
  }
}
// Función asincrónica para importar usuarios desde un archivo CSV
const impUsuario = async (res) => {
  try {
    // Leer el contenido del archivo csv
    const archPath = path.resolve('./usuarios.csv')
    const archCont = await fs.readFile(archPath, 'utf-8')
    // Separar el contenido del archivo en líneas y luego en datos de usuario
    const sepLineas = archCont.split('\n').map(row => row.split(','))
    // Aquí comienza la construcción de la tabla HTML

    // Recorre los datos de usuario e insertarlos en la bd
    for (const userData of sepLineas) {
      const [id, nombres, apellidos, direccion, correoElectronico, dni, edad, fechaCreacion, telefono] = userData

      // Verifica si el ID ya existe en la bd
      const [existeId] = await pool.promise().query('SELECT id FROM empleados WHERE id = ?', [id])
      if (existeId.length > 0) {
        console.log(`El ID ${id} ya existe en la base de datos. Se omite`)
        continue
      }

      const [existeEmail] = await pool.promise().query('SELECT correo_electronico FROM empleados WHERE correo_electronico = ?', [correoElectronico]) // Verifica si el correo electrónico ya existe en la base de datos.
      if (existeEmail.length > 0) {
        console.log(`El correo electrónico ${correoElectronico} ya existe en la base de datos.`)
        continue
      }

      await pool.promise().query('INSERT INTO empleados (id, nombres, apellidos, direccion, correo_electronico, dni, edad, fecha_creacion, telefono) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', [id, nombres, apellidos, direccion, correoElectronico, dni, edad, fechaCreacion, telefono])
      console.log(`Usuario con ID ${id} ingresado correctamente.`)
    }

    res.writeHead(200, { 'Content-Type': 'text/html' })
    res.end('<h1>Usuario Importado</h1>')
  } catch (err) {
    console.error('Error al importar usuarios desde CSV:', err) // Manejar errores al importar usuarios desde csv
    res.writeHead(500, { 'Content-Type': 'text/html' })
    res.end('<h1>Error al importar usuarios desde CSV</h1>')
  }
}
// Crear Servidor HTTP
const server = http.createServer(async (req, res) => {
  const { method, url } = req // Extraer método y URL de la solicitud
  const rutaArch = path.resolve('./src/home.html') // Definir la ruta del archivo predeterminado y el tipo de contenido
  const tipoCont = 'text/html'

  // Manejar solicitudes GET
  if (method === 'GET') {
    switch (url) {
      // Manejar solicitud de obtener la lista de usuarios
      case '/api/usuarios':
        try {
          // Obtener la lista de usuarios desde la bd.
          const usuarios = await listaUsuarios()
          // Enviar la lista de usuarios como respuesta en formato JSON
          res.writeHead(200, { 'Content-Type': 'application/json' })
          res.end(JSON.stringify(usuarios))
          return
        } catch (err) {
          // Manejar errores al obtener los datos de usuario en la base de datos
          res.writeHead(500, { 'Content-Type': 'application/json' })
          res.end(JSON.stringify({ err: 'Error al obtener los datos de usuario en la base de datos' }))
          return
        }
        // Manejar solicitud de exportar usuarios a CSV
      case '/api/usuarios/export':
        await expUsuario()
        try {
          // Leer el contenido del archivo CSV y enviarlo como respuesta
          const rutaCsv = path.resolve('./usuarios.csv')
          const contCsv = await fs.readFile(rutaCsv, 'utf-8')
          res.writeHead(200, { 'Content-Type': 'text/csv' })
          res.end(contCsv)
        } catch (err) {
          // Maneja errores en el archivo CSV
          console.error('Error en el archivo:', err)
          res.writeHead(500, { 'Content-Type': 'text/plain' })
          res.end('Error en el archivo')
        }
        return
        // Maneja solicitud de importar usuarios desde CSV
      case '/api/usuarios/import':
        try {
          await impUsuario(res)
          // Envia mensaje de éxito como respuesta
          res.writeHead(200, { 'Content-Type': 'text/html' })
          res.end('Usuarios importados')
        } catch (err) {
          // Maneja errores al importar usuarios
          console.error('Error al importar', err)
          res.writeHead(500, { 'Content-Type': 'application/json' })
          res.end(JSON.stringify({ err: 'Error al importar' }))
        }
        return
      default:
        break
    }
  }
  // Manejar solicitud de archivos estáticos
  try {
    // Leer el contenido del archivo y enviarlo como respuesta
    const contArch = await fs.readFile(rutaArch, 'utf-8')
    // Establecer encabezados de respuesta con el tipo de contenido y código de estado 200 (OK)
    res.writeHead(200, { 'Content-Type': tipoCont })
    // Enviar el contenido del archivo como respuesta
    res.end(contArch)
  } catch (err) {
    // Manejar errores cuando no se encuentra el archivo
  // Establecer encabezados de respuesta con el código de estado 404 (Not Found)
    res.writeHead(404, { 'Content-Type': 'text/plain' })
    // Enviar un mensaje "No encontrado" como respuesta
    res.end('No encontrado')
  }
})

server.listen(4000, () => {
  console.log('Servidor runnin on http://localhost:4000')
})

// http://localhost:4000/api/usuarios
// http://localhost:4000/api/usuarios/export
// http://localhost:4000/api/usuarios/import
