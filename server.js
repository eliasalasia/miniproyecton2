import fs from 'node:fs/promises';
import path from 'node:path';
import http from 'node:http';
import { listaUsuarios, expUsuario, impUsuario } from './db.js';

// Crear Servidor HTTP
const server = http.createServer(async (req, res) => {
  const { method, url } = req; // Extraer método y URL de la solicitud
  const rutaArch = path.resolve('./src/home.html'); // Definir la ruta del archivo predeterminado y el tipo de contenido
  const tipoCont = 'text/html';

  // Manejar solicitudes GET
  if (method === 'GET') {
    switch (url) {
      // Manejar solicitud de obtener la lista de usuarios
      case '/api/usuarios':
        try {
          // Obtener la lista de usuarios desde la bd.
          const usuarios = await listaUsuarios();
          // Enviar la lista de usuarios como respuesta en formato JSON
          res.writeHead(200, { 'Content-Type': 'application/json' });
          res.end(JSON.stringify(usuarios));
          return;
        } catch (err) {
          // Manejar errores al obtener los datos de usuario en la base de datos
          res.writeHead(500, { 'Content-Type': 'application/json' });
          res.end(JSON.stringify({ err: 'Error al obtener los datos de usuario en la base de datos' }));
          return;
        }
        // Manejar solicitud de exportar usuarios a CSV
      case '/api/usuarios/export':
        await expUsuario();
        try {
          // Leer el contenido del archivo CSV y enviarlo como respuesta
          const rutaCsv = path.resolve('./usuarios.csv');
          const contCsv = await fs.readFile(rutaCsv, 'utf-8');
          res.writeHead(200,