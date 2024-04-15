-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2024 a las 17:06:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mproyect`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `apellidos`, `direccion`, `correo_electronico`, `dni`, `edad`, `fecha_creacion`, `telefono`) VALUES
(1, 'Alie', 'Limpertz', '9 Messerschmidt Drive', 'alimpertz0@nba.com', '02-916-7294', 7, '0000-00-00', '5802104252'),
(2, 'Farrel', 'Absolem', '43 Kim Circle', 'fabsolem1@goodreads.com', '29-895-0212', 7, '0000-00-00', '7691200978'),
(3, 'Lura', 'Hillam', '45 Trailsway Crossing', 'lhillam2@tripadvisor.com', '71-770-4342', 12, '0000-00-00', '1134438613'),
(4, 'Brandi', 'Steger', '792 Oxford Lane', 'bsteger3@e-recht24.de', '66-224-8138', 5, '0000-00-00', '3287968556'),
(5, 'Patin', 'Fullun', '9238 Alpine Avenue', 'pfullun4@ucoz.ru', '64-695-7216', 7, '0000-00-00', '5566407560'),
(6, 'Rockwell', 'Cosbee', '96099 Shopko Lane', 'rcosbee5@tinypic.com', '88-292-1451', 4, '0000-00-00', '4159863663'),
(7, 'Guilbert', 'Keary', '4 Logan Parkway', 'gkeary6@webmd.com', '38-743-5754', 4, '0000-00-00', '4474657810'),
(8, 'Jesselyn', 'Burton', '26 Novick Crossing', 'jburton7@bluehost.com', '60-958-1311', 7, '0000-00-00', '6726970218'),
(9, 'Shina', 'Shires', '63 Bunker Hill Lane', 'sshires8@example.com', '13-669-6012', 12, '0000-00-00', '6912042910'),
(10, 'Fairfax', 'Verzey', '751 Spohn Road', 'fverzey9@github.io', '00-386-4895', 11, '0000-00-00', '7217504635'),
(11, 'Rudolfo', 'Osman', '4130 Hanover Junction', 'rosmana@theatlantic.com', '63-489-0018', 2, '0000-00-00', '0444176373'),
(12, 'Gerty', 'Ferriere', '125 Sage Junction', 'gferriereb@xrea.com', '25-298-6351', 5, '0000-00-00', '7647293788'),
(13, 'Tatiana', 'Buttle', '207 Stone Corner Street', 'tbuttlec@issuu.com', '32-952-1406', 5, '0000-00-00', '6478432742'),
(14, 'Scottie', 'Andreia', '8 Coleman Trail', 'sandreiad@uol.com.br', '98-903-6249', 3, '0000-00-00', '6854803748'),
(15, 'Consolata', 'Cullinan', '220 Fuller Avenue', 'ccullinane@mayoclinic.com', '13-757-3501', 4, '0000-00-00', '5671257913'),
(16, 'Di', 'Pounds', '40071 Spohn Junction', 'dpoundsf@yahoo.co.jp', '94-989-7818', 1, '0000-00-00', '3211409939'),
(17, 'Garrik', 'Jemmison', '63268 La Follette Lane', 'gjemmisong@google.it', '15-773-5292', 5, '0000-00-00', '1534121293'),
(18, 'Kimbell', 'Ronchi', '6709 Eastlawn Road', 'kronchih@shinystat.com', '77-888-4400', 6, '0000-00-00', '1024780538'),
(19, 'Gannie', 'McMonnies', '15648 Paget Junction', 'gmcmonniesi@slate.com', '81-133-0015', 6, '0000-00-00', '1799529800'),
(20, 'Galven', 'Willerstone', '8658 Alpine Road', 'gwillerstonej@sphinn.com', '19-469-7136', 3, '0000-00-00', '9153449258'),
(21, 'Filmore', 'Fadell', '10 Rowland Point', 'ffadellk@java.com', '80-757-8410', 12, '0000-00-00', '1515713253'),
(22, 'Sileas', 'Allmen', '8 Menomonie Drive', 'sallmenl@gnu.org', '70-260-8754', 3, '0000-00-00', '8945570225'),
(23, 'Fiann', 'Goldine', '03581 Carioca Crossing', 'fgoldinem@mapy.cz', '08-983-8359', 2, '0000-00-00', '7473012878'),
(24, 'Hector', 'Cossar', '389 Service Plaza', 'hcossarn@reverbnation.com', '11-908-9623', 9, '0000-00-00', '7160404009'),
(25, 'Andres', 'Dinley', '5 Ridgeview Point', 'adinleyo@cam.ac.uk', '40-182-5139', 11, '0000-00-00', '8644236210'),
(26, 'Estel', 'Boichat', '7082 Holmberg Way', 'eboichatp@soup.io', '88-087-8818', 6, '0000-00-00', '7357253740'),
(27, 'Claude', 'Merrill', '0854 Mifflin Pass', 'cmerrillq@reverbnation.com', '87-883-8898', 4, '0000-00-00', '7114133626'),
(28, 'Bryna', 'Orgel', '57 Service Center', 'borgelr@sciencedirect.com', '90-663-7088', 6, '0000-00-00', '9237470177'),
(29, 'Elora', 'Toyer', '878 Sauthoff Court', 'etoyers@bbb.org', '00-357-2462', 7, '0000-00-00', '1427322546'),
(30, 'Stefan', 'Edmonson', '06 Everett Street', 'sedmonsont@fda.gov', '17-132-9060', 1, '0000-00-00', '9696516525'),
(31, 'Elmore', 'Morlon', '29 Kings Park', 'emorlonu@barnesandnoble.com', '18-961-4526', 3, '0000-00-00', '7979220536'),
(32, 'Martha', 'Jefferson', '40 Knutson Pass', 'mjeffersonv@plala.or.jp', '97-838-5312', 7, '0000-00-00', '4580106512'),
(33, 'Cari', 'Argo', '813 Loftsgordon Parkway', 'cargow@mayoclinic.com', '16-758-9958', 5, '0000-00-00', '2382796340'),
(34, 'Kelcie', 'Kaysor', '93326 Ludington Point', 'kkaysorx@cisco.com', '65-907-8313', 12, '0000-00-00', '3714617949'),
(35, 'Aaren', 'Lippard', '1892 Kenwood Lane', 'alippardy@nymag.com', '77-462-6377', 11, '0000-00-00', '7608598875'),
(36, 'Marielle', 'Glancy', '5403 Luster Road', 'mglancyz@myspace.com', '95-167-8294', 1, '0000-00-00', '4668132160'),
(37, 'Elvera', 'Innot', '2 Oxford Way', 'einnot10@hc360.com', '30-585-4999', 1, '0000-00-00', '5099734928'),
(38, 'Reeba', 'Dabbs', '5 Ruskin Drive', 'rdabbs11@alibaba.com', '13-351-7821', 1, '0000-00-00', '7008738412'),
(39, 'Janos', 'Bodell', '1 Towne Road', 'jbodell12@bloglines.com', '29-746-1929', 12, '0000-00-00', '0061549436'),
(40, 'Miriam', 'McBay', '40 Roth Way', 'mmcbay13@eepurl.com', '84-137-3285', 3, '0000-00-00', '6427986562'),
(41, 'Harrietta', 'Cowan', '258 Vahlen Court', 'hcowan14@ca.gov', '21-572-9940', 6, '0000-00-00', '2170411992'),
(42, 'Willyt', 'Salandino', '1 Rowland Point', 'wsalandino15@cbc.ca', '19-260-8942', 12, '0000-00-00', '5061254880'),
(43, 'Jeanie', 'Bukac', '2 Dottie Circle', 'jbukac16@diigo.com', '15-871-4504', 9, '0000-00-00', '6627592320'),
(44, 'Law', 'D\'Agostino', '02 Lakewood Plaza', 'ldagostino17@answers.com', '27-196-6867', 12, '0000-00-00', '0843457899'),
(45, 'Gene', 'Farlham', '68 Vermont Court', 'gfarlham18@nhs.uk', '11-663-0164', 5, '0000-00-00', '7053244938'),
(46, 'Guinevere', 'Lease', '89 Spohn Hill', 'glease19@1688.com', '93-330-4477', 7, '0000-00-00', '4061445839'),
(47, 'Hew', 'D\'Acth', '2544 Bluejay Trail', 'hdacth1a@vimeo.com', '16-027-9015', 10, '0000-00-00', '2066891193'),
(48, 'Eadith', 'Kinsman', '1401 Manley Drive', 'ekinsman1b@ed.gov', '49-379-7747', 7, '0000-00-00', '2592855637'),
(49, 'Hildagard', 'Van den Oord', '651 Graedel Junction', 'hvandenoord1c@hexun.com', '86-135-3117', 10, '0000-00-00', '3445204217'),
(50, 'Rodi', 'Trazzi', '35 Milwaukee Circle', 'rtrazzi1d@omniture.com', '93-466-7771', 7, '0000-00-00', '3505676519'),
(51, 'Deidre', 'Kropach', '9 Meadow Ridge Circle', 'dkropach1e@illinois.edu', '78-820-3801', 2, '0000-00-00', '8046170666'),
(52, 'Filberte', 'McKinn', '141 Fairfield Place', 'fmckinn1f@hatena.ne.jp', '06-490-2868', 5, '0000-00-00', '8192371670'),
(53, 'Dex', 'Sawden', '0 Summit Crossing', 'dsawden1g@1und1.de', '95-328-5808', 9, '0000-00-00', '2771211793'),
(54, 'Fayre', 'Dorey', '224 Mitchell Court', 'fdorey1h@tuttocitta.it', '54-522-5592', 3, '0000-00-00', '7569740203'),
(55, 'Kaylil', 'Capnor', '09566 Mcbride Drive', 'kcapnor1i@github.io', '31-935-5878', 1, '0000-00-00', '3080424808'),
(56, 'Mia', 'Pozzi', '640 Merrick Terrace', 'mpozzi1j@google.co.jp', '17-640-9636', 12, '0000-00-00', '5434486285'),
(57, 'Wynnie', 'Smiths', '86740 Holy Cross Place', 'wsmiths1k@independent.co.uk', '52-959-8336', 6, '0000-00-00', '5113825824'),
(58, 'Janet', 'Oven', '674 Carberry Crossing', 'joven1l@feedburner.com', '78-138-8494', 12, '0000-00-00', '7440100123'),
(59, 'Florentia', 'Mc Harg', '336 Spenser Lane', 'fmcharg1m@weibo.com', '07-728-6774', 5, '0000-00-00', '0371985625'),
(60, 'Halli', 'Oldrey', '7410 Blue Bill Park Avenue', 'holdrey1n@unesco.org', '79-684-2295', 2, '0000-00-00', '9929403752'),
(61, 'Devlin', 'Antonazzi', '68017 Prairieview Street', 'dantonazzi1o@phpbb.com', '20-100-9663', 8, '0000-00-00', '4025201380'),
(62, 'Erica', 'Thistleton', '7900 Westridge Road', 'ethistleton1p@indiegogo.com', '66-430-5405', 5, '0000-00-00', '6201168702'),
(63, 'Deni', 'Becke', '4 Hoepker Avenue', 'dbecke1q@google.fr', '47-108-2467', 12, '0000-00-00', '5562767384'),
(64, 'Rafaela', 'Bensusan', '67 La Follette Terrace', 'rbensusan1r@msu.edu', '98-755-8487', 6, '0000-00-00', '9814677086'),
(65, 'Larry', 'Sizzey', '43 Merrick Road', 'lsizzey1s@diigo.com', '59-729-2420', 12, '0000-00-00', '5371129278'),
(66, 'Jenny', 'Dengel', '538 Upham Junction', 'jdengel1t@salon.com', '29-143-2159', 6, '0000-00-00', '8307291402'),
(67, 'Morten', 'Bruni', '06831 Orin Place', 'mbruni1u@nsw.gov.au', '22-348-1643', 10, '0000-00-00', '6926077053'),
(68, 'Linzy', 'Beldam', '619 Iowa Parkway', 'lbeldam1v@hc360.com', '94-008-3806', 2, '0000-00-00', '2118121261'),
(69, 'Rand', 'Randleson', '7 Sutteridge Park', 'rrandleson1w@tumblr.com', '32-142-4494', 4, '0000-00-00', '9871863616'),
(70, 'Giulia', 'Nannini', '83 Bonner Terrace', 'gnannini1x@umich.edu', '45-056-9689', 10, '0000-00-00', '4506526686'),
(71, 'Aharon', 'Dionisio', '46 Shelley Hill', 'adionisio1y@exblog.jp', '66-538-6672', 5, '0000-00-00', '9931610565'),
(72, 'Constance', 'Karczinski', '5 Dapin Place', 'ckarczinski1z@wikipedia.org', '46-152-9626', 1, '0000-00-00', '9987349188'),
(73, 'Dolph', 'Blackhurst', '50263 Transport Place', 'dblackhurst20@rakuten.co.jp', '08-681-2997', 12, '0000-00-00', '0127278087'),
(74, 'Jacinda', 'Detoile', '02001 Surrey Drive', 'jdetoile21@alexa.com', '98-632-7265', 5, '0000-00-00', '7123238699'),
(75, 'Jeremie', 'Gilloran', '95146 Schlimgen Plaza', 'jgilloran22@timesonline.co.uk', '55-231-2154', 10, '0000-00-00', '3719747867'),
(76, 'Addie', 'Kitney', '2 Mesta Junction', 'akitney23@blinklist.com', '27-143-4663', 1, '0000-00-00', '6499342297'),
(77, 'Debor', 'Moens', '8436 Springview Terrace', 'dmoens24@amazon.com', '23-157-1501', 6, '0000-00-00', '4620070327'),
(78, 'Gwenora', 'Buttel', '71129 Morning Lane', 'gbuttel25@utexas.edu', '12-144-5444', 11, '0000-00-00', '1205236309'),
(79, 'Rivalee', 'Hagland', '98 Shelley Hill', 'rhagland26@cbsnews.com', '56-609-6902', 11, '0000-00-00', '8720021429'),
(80, 'Lorianna', 'Padfield', '86 Mandrake Place', 'lpadfield27@yellowpages.com', '04-733-4746', 3, '0000-00-00', '7461534823'),
(81, 'Lisette', 'McMillan', '7 Butternut Avenue', 'lmcmillan28@smh.com.au', '96-980-3958', 11, '0000-00-00', '4884492943'),
(82, 'Jordan', 'De\'Ath', '9581 Jenna Lane', 'jdeath29@hatena.ne.jp', '19-515-6268', 12, '0000-00-00', '4066198627'),
(83, 'Farica', 'Osgood', '4426 Butternut Avenue', 'fosgood2a@gravatar.com', '44-927-3810', 12, '0000-00-00', '9695279376'),
(84, 'Florian', 'O\'Rowane', '1184 Summerview Junction', 'forowane2b@home.pl', '86-638-0233', 4, '0000-00-00', '0366385402'),
(85, 'Cassie', 'Darter', '41404 Hoard Trail', 'cdarter2c@com.com', '32-057-6337', 4, '0000-00-00', '9337709406'),
(86, 'Randell', 'Lerner', '9 Anderson Drive', 'rlerner2d@fema.gov', '01-813-6035', 9, '0000-00-00', '4850498418'),
(87, 'Welch', 'Seamarke', '3 Westport Place', 'wseamarke2e@facebook.com', '54-255-4767', 4, '0000-00-00', '6904457570'),
(88, 'Cosmo', 'Allsupp', '4720 Sunbrook Court', 'callsupp2f@com.com', '76-851-3565', 3, '0000-00-00', '6271382290'),
(89, 'Margaux', 'Scarrott', '6286 Rutledge Junction', 'mscarrott2g@usgs.gov', '21-427-8834', 9, '0000-00-00', '5081785717'),
(90, 'Sawyer', 'Allaway', '73955 Delaware Parkway', 'sallaway2h@google.com.au', '97-309-1962', 10, '0000-00-00', '5357821127'),
(91, 'Elnora', 'Pointin', '861 Bonner Place', 'epointin2i@seesaa.net', '39-529-2206', 3, '0000-00-00', '1566661277'),
(92, 'Barbara-anne', 'Machan', '61 Tony Hill', 'bmachan2j@npr.org', '90-148-3747', 6, '0000-00-00', '3634047380'),
(93, 'Wells', 'Vynall', '1947 Hoffman Circle', 'wvynall2k@yahoo.com', '03-576-8209', 10, '0000-00-00', '4086557851'),
(94, 'Artemus', 'Allner', '2902 Bunker Hill Way', 'aallner2l@ucsd.edu', '02-865-1666', 9, '0000-00-00', '7815606008'),
(95, 'Abey', 'Agney', '94 Buell Court', 'aagney2m@jalbum.net', '89-989-0964', 5, '0000-00-00', '9074105513'),
(96, 'Bobbee', 'Harfoot', '51 Dexter Street', 'bharfoot2n@wiley.com', '10-385-9255', 6, '0000-00-00', '7303438602'),
(97, 'Karen', 'Lodewick', '58 Meadow Vale Street', 'klodewick2o@shutterfly.com', '47-647-1456', 3, '0000-00-00', '4616470855'),
(98, 'Aline', 'Goodram', '833 Sachtjen Parkway', 'agoodram2p@google.cn', '01-230-7692', 10, '0000-00-00', '2038239118'),
(99, 'Cyndi', 'Maymand', '7899 Sutherland Road', 'cmaymand2q@timesonline.co.uk', '91-175-6769', 7, '0000-00-00', '5531442297'),
(100, 'Breanne', 'Huard', '75396 Katie Lane', 'bhuard2r@spotify.com', '23-940-9094', 3, '0000-00-00', '4264077273'),
(101, 'Max', 'Wennam', '4263 American Trail', 'mwennam2s@dot.gov', '04-490-6038', 1, '0000-00-00', '7354665053'),
(102, 'Britt', 'Murford', '920 Sachtjen Street', 'bmurford2t@indiegogo.com', '12-705-8269', 8, '0000-00-00', '2396492497'),
(103, 'Lizzy', 'Matiashvili', '17 Surrey Hill', 'lmatiashvili2u@ask.com', '03-266-7358', 3, '0000-00-00', '9318627319'),
(104, 'Travers', 'Antrobus', '69 Spaight Court', 'tantrobus2v@columbia.edu', '88-726-3922', 7, '0000-00-00', '8724839086'),
(105, 'Delilah', 'Shearston', '3180 Kim Way', 'dshearston2w@nhs.uk', '02-676-9910', 6, '0000-00-00', '0612008061'),
(106, 'Parnell', 'Champness', '531 Daystar Circle', 'pchampness2x@berkeley.edu', '07-964-1452', 1, '0000-00-00', '6829375568'),
(107, 'Eadith', 'Delete', '44240 Holmberg Way', 'edelete2y@xinhuanet.com', '73-732-8629', 8, '0000-00-00', '5480772228'),
(108, 'Sioux', 'Daudray', '11 John Wall Center', 'sdaudray2z@cdc.gov', '96-189-6693', 1, '0000-00-00', '7677499635'),
(109, 'Madeleine', 'Eversley', '0281 Hoffman Center', 'meversley30@about.com', '51-554-7772', 1, '0000-00-00', '8870572056'),
(110, 'Donnell', 'Stockney', '3 Melrose Alley', 'dstockney31@seesaa.net', '84-557-1162', 2, '0000-00-00', '6977004568'),
(111, 'Almira', 'Colqueran', '20464 Florence Parkway', 'acolqueran32@usgs.gov', '32-822-9790', 9, '0000-00-00', '5854656655'),
(112, 'Marie-ann', 'Kinze', '643 Pond Junction', 'mkinze33@cocolog-nifty.com', '71-575-0403', 3, '0000-00-00', '7371231007'),
(113, 'Flory', 'Harlick', '48 Old Gate Road', 'fharlick34@123-reg.co.uk', '56-118-4735', 2, '0000-00-00', '9959150062'),
(114, 'Karia', 'Piaggia', '2283 Union Court', 'kpiaggia35@devhub.com', '90-100-1397', 8, '0000-00-00', '9393916365'),
(115, 'Dulcie', 'Ely', '7 Hansons Road', 'dely36@mysql.com', '13-169-5080', 1, '0000-00-00', '6798239811'),
(116, 'Haydon', 'Strewthers', '8 Hanover Hill', 'hstrewthers37@utexas.edu', '00-747-2847', 9, '0000-00-00', '9188942996'),
(117, 'Bethina', 'Giriardelli', '8 Canary Point', 'bgiriardelli38@reference.com', '39-855-7617', 5, '0000-00-00', '5772157108'),
(118, 'Alidia', 'Prisley', '216 Sunbrook Pass', 'aprisley39@friendfeed.com', '36-162-3534', 12, '0000-00-00', '7809960679'),
(119, 'Casie', 'Croad', '82873 West Road', 'ccroad3a@google.com', '51-887-4165', 3, '0000-00-00', '8510107130'),
(120, 'Bax', 'Neubigin', '1 Longview Junction', 'bneubigin3b@desdev.cn', '39-599-1795', 8, '0000-00-00', '4528197049'),
(121, 'Katharine', 'Drew-Clifton', '00582 Johnson Pass', 'kdrewclifton3c@delicious.com', '81-735-1365', 6, '0000-00-00', '7712596352'),
(122, 'Flinn', 'Sylvaine', '0189 Colorado Point', 'fsylvaine3d@blogtalkradio.com', '76-379-4422', 3, '0000-00-00', '9660646224'),
(123, 'Garrek', 'Vinsen', '4 Garrison Way', 'gvinsen3e@usnews.com', '86-684-4917', 4, '0000-00-00', '2166727425'),
(124, 'Georgeanna', 'Edling', '53373 Melrose Avenue', 'gedling3f@trellian.com', '59-386-0814', 5, '0000-00-00', '4809009599'),
(125, 'Lyon', 'Dewett', '8 Manufacturers Terrace', 'ldewett3g@4shared.com', '36-479-1641', 5, '0000-00-00', '9165220803'),
(126, 'Wilhelmina', 'Spohr', '51503 Sunfield Lane', 'wspohr3h@imgur.com', '93-855-4190', 5, '0000-00-00', '8788825248'),
(127, 'Pansy', 'Sodo', '76 Waubesa Center', 'psodo3i@alibaba.com', '25-021-1396', 12, '0000-00-00', '1872834043'),
(128, 'Patrica', 'Cullington', '228 Crownhardt Lane', 'pcullington3j@naver.com', '92-321-6289', 3, '0000-00-00', '6020089363'),
(129, 'Calli', 'Gouldie', '55 Gina Alley', 'cgouldie3k@newsvine.com', '77-969-6657', 8, '0000-00-00', '4042137806'),
(130, 'Tracey', 'Mullen', '6 Miller Hill', 'tmullen3l@cbc.ca', '75-927-6408', 8, '0000-00-00', '2915323380'),
(131, 'Alejoa', 'Mayhou', '083 South Pass', 'amayhou3m@gov.uk', '02-631-3575', 3, '0000-00-00', '0912578165'),
(132, 'Eleni', 'Kinsell', '61 Haas Center', 'ekinsell3n@netlog.com', '11-239-2175', 8, '0000-00-00', '8952694228'),
(133, 'Gabe', 'Bolens', '8 International Drive', 'gbolens3o@gov.uk', '58-154-4338', 2, '0000-00-00', '5863177322'),
(134, 'Sanson', 'Lowings', '57 Arrowood Trail', 'slowings3p@npr.org', '11-973-0902', 5, '0000-00-00', '1462101674'),
(135, 'Garvey', 'Winckles', '4 Fair Oaks Street', 'gwinckles3q@spotify.com', '45-684-5391', 11, '0000-00-00', '6218732770'),
(136, 'Portie', 'Mattek', '9078 Schurz Lane', 'pmattek3r@columbia.edu', '70-397-8297', 9, '0000-00-00', '6501499577'),
(137, 'Rhody', 'Verna', '48361 Dawn Terrace', 'rverna3s@walmart.com', '89-604-4417', 11, '0000-00-00', '1925592405'),
(138, 'Thorin', 'Boag', '865 Raven Street', 'tboag3t@arizona.edu', '87-934-2444', 4, '0000-00-00', '6339344364'),
(139, 'Hale', 'Scothron', '220 Hoffman Terrace', 'hscothron3u@nba.com', '62-548-2108', 3, '0000-00-00', '3098279311'),
(140, 'Carina', 'Ruste', '25 Carey Junction', 'cruste3v@phpbb.com', '16-777-3504', 6, '0000-00-00', '1644244020'),
(141, 'Dix', 'Jerrold', '77 Duke Hill', 'djerrold3w@ezinearticles.com', '31-692-2942', 10, '0000-00-00', '7463994406'),
(142, 'Aubree', 'Senter', '870 Tennessee Street', 'asenter3x@google.cn', '33-683-5838', 1, '0000-00-00', '6894598029'),
(143, 'Mamie', 'Longea', '0 Welch Center', 'mlongea3y@alexa.com', '93-569-9827', 9, '0000-00-00', '2865161226'),
(144, 'Midge', 'Missenden', '19228 Pankratz Point', 'mmissenden3z@discuz.net', '06-639-2696', 2, '0000-00-00', '4753623599'),
(145, 'Guy', 'Stebbing', '1354 Pepper Wood Trail', 'gstebbing40@loc.gov', '08-001-3617', 5, '0000-00-00', '5795821365'),
(146, 'Anetta', 'Pillman', '327 Shasta Lane', 'apillman41@auda.org.au', '57-525-7133', 10, '0000-00-00', '4404527683'),
(147, 'Sheena', 'Nijssen', '31 Del Mar Drive', 'snijssen42@go.com', '99-059-5255', 1, '0000-00-00', '8244671041'),
(148, 'Ardisj', 'Cass', '361 Thierer Place', 'acass43@rambler.ru', '02-684-7499', 10, '0000-00-00', '6334612360'),
(149, 'Ag', 'Lyston', '7 Cody Plaza', 'alyston44@ftc.gov', '96-327-8431', 10, '0000-00-00', '3160911667'),
(150, 'Callie', 'Conn', '5 Jenifer Way', 'cconn45@uol.com.br', '15-095-1144', 9, '0000-00-00', '4077074754'),
(151, 'Tansy', 'Tarbatt', '7728 Arapahoe Parkway', 'ttarbatt46@cafepress.com', '76-489-5033', 9, '0000-00-00', '8314470341'),
(152, 'Francis', 'Congreave', '2623 Lillian Road', 'fcongreave47@uol.com.br', '20-498-0667', 11, '0000-00-00', '7576428589'),
(153, 'Wayland', 'Milnthorpe', '68 Namekagon Point', 'wmilnthorpe48@yolasite.com', '16-981-6998', 11, '0000-00-00', '6863932482'),
(154, 'Dyann', 'Saltsberger', '998 Swallow Trail', 'dsaltsberger49@free.fr', '01-231-5764', 6, '0000-00-00', '8273159043'),
(155, 'Geri', 'Petrashkov', '3 Heffernan Pass', 'gpetrashkov4a@goo.ne.jp', '71-151-3354', 12, '0000-00-00', '7012844795'),
(156, 'Fairfax', 'Strongman', '79 Jenna Lane', 'fstrongman4b@twitter.com', '09-228-6830', 3, '0000-00-00', '8449571294'),
(157, 'Wilone', 'Fuggles', '19 Dottie Point', 'wfuggles4c@flavors.me', '24-698-4605', 3, '0000-00-00', '8707770650'),
(158, 'Wang', 'Neising', '769 Johnson Park', 'wneising4d@gov.uk', '17-226-0834', 10, '0000-00-00', '5385844942'),
(159, 'Cornall', 'Gartrell', '16130 Bashford Pass', 'cgartrell4e@patch.com', '67-585-7219', 5, '0000-00-00', '1186585552'),
(160, 'Mace', 'Keyson', '3518 Warner Parkway', 'mkeyson4f@cdbaby.com', '94-405-5714', 12, '0000-00-00', '8702772299'),
(161, 'Virgie', 'Goldwater', '87 Fairview Way', 'vgoldwater4g@guardian.co.uk', '87-900-2790', 1, '0000-00-00', '2433250188'),
(162, 'Lurlene', 'Loughan', '422 Farragut Park', 'lloughan4h@wp.com', '44-234-7000', 4, '0000-00-00', '6174384918'),
(163, 'Hamlin', 'Garriock', '2142 Namekagon Street', 'hgarriock4i@taobao.com', '62-763-1971', 8, '0000-00-00', '0125794002'),
(164, 'Justina', 'McVeighty', '10 Eagle Crest Alley', 'jmcveighty4j@phpbb.com', '93-823-1265', 10, '0000-00-00', '4094219676'),
(165, 'Clea', 'Treharne', '76 Golf View Circle', 'ctreharne4k@loc.gov', '48-268-9079', 12, '0000-00-00', '3409925708'),
(166, 'Cobb', 'Whitters', '4 Dunning Point', 'cwhitters4l@is.gd', '07-507-1016', 7, '0000-00-00', '1656833476'),
(167, 'Jobina', 'Brisker', '54626 Comanche Plaza', 'jbrisker4m@behance.net', '17-801-2819', 9, '0000-00-00', '5135319913'),
(168, 'Iain', 'Colmer', '09239 Miller Pass', 'icolmer4n@ebay.com', '59-948-7667', 9, '0000-00-00', '3034558899'),
(169, 'Tulley', 'Gut', '9874 Granby Crossing', 'tgut4o@e-recht24.de', '14-635-2990', 1, '0000-00-00', '5381732856'),
(170, 'Wiley', 'Rainard', '47 Eastlawn Lane', 'wrainard4p@gov.uk', '65-091-2752', 12, '0000-00-00', '2379169756'),
(171, 'Hyacinthie', 'D\'Angeli', '2208 Clemons Avenue', 'hdangeli4q@nps.gov', '43-698-8803', 3, '0000-00-00', '9429891618'),
(172, 'Felice', 'Cockney', '8124 Onsgard Trail', 'fcockney4r@goodreads.com', '08-470-9615', 3, '0000-00-00', '8565668711'),
(173, 'Luce', 'Formoy', '3915 Harbort Parkway', 'lformoy4s@zdnet.com', '61-455-6593', 7, '0000-00-00', '0559413823'),
(174, 'Derward', 'Bonsey', '8 Mifflin Plaza', 'dbonsey4t@mlb.com', '13-694-9671', 3, '0000-00-00', '2875146335'),
(175, 'Fran', 'Sneddon', '173 Nevada Hill', 'fsneddon4u@house.gov', '59-230-9741', 8, '0000-00-00', '0006520235'),
(176, 'Gwendolin', 'McQuarter', '18672 Bluestem Lane', 'gmcquarter4v@istockphoto.com', '57-654-3759', 7, '0000-00-00', '2396258281'),
(177, 'Delcina', 'Freen', '0377 Stang Drive', 'dfreen4w@yolasite.com', '85-684-8906', 5, '0000-00-00', '6556433403'),
(178, 'Hastings', 'Shelford', '53555 Arkansas Point', 'hshelford4x@bloglovin.com', '41-285-2344', 8, '0000-00-00', '3068879256'),
(179, 'Caitrin', 'Danne', '20 South Trail', 'cdanne4y@mozilla.com', '85-495-3817', 4, '0000-00-00', '9197769924'),
(180, 'Elicia', 'McPharlain', '68015 Elmside Lane', 'emcpharlain4z@google.ca', '16-382-4239', 12, '0000-00-00', '0764506323'),
(181, 'Bailey', 'Hadleigh', '7540 Tony Center', 'bhadleigh50@cbc.ca', '07-536-9378', 3, '0000-00-00', '5571737530'),
(182, 'Danni', 'Wishkar', '5802 Nova Plaza', 'dwishkar51@utexas.edu', '07-123-2236', 12, '0000-00-00', '0324016832'),
(183, 'Kriste', 'Nisen', '0 Grover Terrace', 'knisen52@miibeian.gov.cn', '20-080-0181', 8, '0000-00-00', '8523414045'),
(184, 'Noella', 'Dampney', '98 Nancy Trail', 'ndampney53@ucla.edu', '98-256-3525', 5, '0000-00-00', '3428094786'),
(185, 'Taite', 'Redman', '460 Victoria Trail', 'tredman54@amazon.de', '89-540-3059', 9, '0000-00-00', '9738168252'),
(186, 'Skyler', 'Mabbe', '2 Morrow Plaza', 'smabbe55@wufoo.com', '58-449-2498', 3, '0000-00-00', '3808180455'),
(187, 'Della', 'Parminter', '0885 Luster Drive', 'dparminter56@yandex.ru', '69-973-1135', 11, '0000-00-00', '4098988267'),
(188, 'Rycca', 'Gresley', '27011 American Pass', 'rgresley57@youku.com', '58-636-2592', 11, '0000-00-00', '5006822481'),
(189, 'Vera', 'Meineken', '81 Farwell Alley', 'vmeineken58@webeden.co.uk', '12-740-3293', 11, '0000-00-00', '9329115306'),
(190, 'Venita', 'Pugsley', '99408 Ridge Oak Place', 'vpugsley59@webmd.com', '38-862-5492', 7, '0000-00-00', '8515611996'),
(191, 'Jamill', 'Fluit', '3 Norway Maple Street', 'jfluit5a@taobao.com', '95-044-4201', 6, '0000-00-00', '4651041418'),
(192, 'Lurline', 'Cerman', '6 Menomonie Place', 'lcerman5b@google.es', '25-735-3835', 3, '0000-00-00', '0472914936'),
(193, 'Channa', 'MacAdie', '8 Merrick Point', 'cmacadie5c@china.com.cn', '43-309-1552', 3, '0000-00-00', '7314838976'),
(194, 'Sile', 'Opdenort', '2 Badeau Junction', 'sopdenort5d@nps.gov', '11-213-5238', 2, '0000-00-00', '3664156382'),
(195, 'Levon', 'Pinchbeck', '0784 Schlimgen Junction', 'lpinchbeck5e@businessinsider.com', '35-892-1550', 5, '0000-00-00', '6006854120'),
(196, 'Donn', 'Sidney', '07 Dorton Junction', 'dsidney5f@chicagotribune.com', '71-041-3865', 4, '0000-00-00', '3822715247'),
(197, 'Brannon', 'Sleightholme', '0 Lindbergh Crossing', 'bsleightholme5g@shinystat.com', '56-064-3859', 3, '0000-00-00', '2652654071'),
(198, 'Elton', 'Arger', '38 Raven Park', 'earger5h@hatena.ne.jp', '73-514-5777', 11, '0000-00-00', '9526418875'),
(199, 'Jerri', 'Semkins', '7055 Bowman Hill', 'jsemkins5i@stumbleupon.com', '19-916-7310', 9, '0000-00-00', '6841489195'),
(200, 'Luciana', 'Knight', '664 Stang Center', 'lknight5j@ycombinator.com', '63-107-0987', 4, '0000-00-00', '3675877639'),
(201, 'Tally', 'Combes', '5 Texas Alley', 'tcombes5k@house.gov', '91-308-4095', 9, '0000-00-00', '4986273965'),
(202, 'Janis', 'Phythean', '93 Packers Center', 'jphythean5l@de.vu', '08-722-1778', 10, '0000-00-00', '0909891338'),
(203, 'Jaquith', 'Gristwood', '69 Summer Ridge Crossing', 'jgristwood5m@eepurl.com', '40-139-2615', 10, '0000-00-00', '2507636645'),
(204, 'Dianne', 'Prisley', '7629 Mallard Street', 'dprisley5n@tripod.com', '14-754-0592', 4, '0000-00-00', '3539338675'),
(205, 'Jonathan', 'Kinneally', '482 Lien Center', 'jkinneally5o@theguardian.com', '90-606-8269', 3, '0000-00-00', '7702828226'),
(206, 'Billy', 'Wreford', '490 Sutteridge Place', 'bwreford5p@ox.ac.uk', '54-324-5740', 3, '0000-00-00', '2872790152'),
(207, 'Shanna', 'Scargill', '72755 Bobwhite Junction', 'sscargill5q@hubpages.com', '41-710-8405', 7, '0000-00-00', '1389032051'),
(208, 'Kahlil', 'Zaczek', '915 Dunning Parkway', 'kzaczek5r@gnu.org', '68-449-0250', 3, '0000-00-00', '2531184813'),
(209, 'Ronald', 'Durkin', '158 Esker Lane', 'rdurkin5s@amazonaws.com', '94-969-1890', 10, '0000-00-00', '5121371608'),
(210, 'Rog', 'Caffrey', '58 Pierstorff Circle', 'rcaffrey5t@cbc.ca', '19-410-7531', 2, '0000-00-00', '4017161626'),
(211, 'Scarface', 'Roof', '2 Arapahoe Way', 'sroof5u@noaa.gov', '34-117-6586', 12, '0000-00-00', '4099200795'),
(212, 'Joellyn', 'Flaxman', '7278 Nevada Street', 'jflaxman5v@wufoo.com', '68-113-8615', 8, '0000-00-00', '3400508721'),
(213, 'Zondra', 'Syalvester', '9524 Farmco Center', 'zsyalvester5w@meetup.com', '49-799-8883', 3, '0000-00-00', '4604612137'),
(214, 'Traci', 'Andreolli', '140 Grover Park', 'tandreolli5x@plala.or.jp', '93-750-7506', 7, '0000-00-00', '7907732395'),
(215, 'Aluin', 'Dyche', '3498 Dwight Way', 'adyche5y@exblog.jp', '44-726-5839', 7, '0000-00-00', '8169027284'),
(216, 'Margy', 'Cressy', '9 Macpherson Center', 'mcressy5z@si.edu', '30-006-8453', 3, '0000-00-00', '2763322212'),
(217, 'Chucho', 'Coltart', '49 Luster Terrace', 'ccoltart60@skype.com', '10-639-8499', 12, '0000-00-00', '9879788087'),
(218, 'Tomkin', 'Le Quesne', '23702 Stoughton Pass', 'tlequesne61@mit.edu', '54-379-5482', 7, '0000-00-00', '7579161850'),
(219, 'Bentlee', 'Rawlence', '342 Artisan Alley', 'brawlence62@reference.com', '45-567-6563', 5, '0000-00-00', '0210751924'),
(220, 'Abelard', 'Constance', '2485 Autumn Leaf Avenue', 'aconstance63@uol.com.br', '49-074-5550', 4, '0000-00-00', '1091569908'),
(221, 'Bunny', 'Wiffler', '626 Clarendon Parkway', 'bwiffler64@hexun.com', '66-521-8100', 5, '0000-00-00', '0276138724'),
(222, 'Dee', 'Dmitrievski', '7841 Esker Terrace', 'ddmitrievski65@storify.com', '46-798-5345', 10, '0000-00-00', '2602982377'),
(223, 'Frankie', 'Sawford', '6916 Huxley Place', 'fsawford66@fastcompany.com', '43-857-5517', 2, '0000-00-00', '9255601385'),
(224, 'Jessie', 'Himsworth', '13 Ronald Regan Plaza', 'jhimsworth67@google.ru', '07-680-1530', 1, '0000-00-00', '0411407929'),
(225, 'Lorianne', 'Swettenham', '1917 Rowland Hill', 'lswettenham68@ebay.co.uk', '60-665-3072', 7, '0000-00-00', '8372657483'),
(226, 'Mercy', 'Matley', '2158 Evergreen Way', 'mmatley69@cdc.gov', '43-100-1857', 1, '0000-00-00', '7034947775'),
(227, 'Dimitri', 'Becconsall', '2219 Marquette Center', 'dbecconsall6a@stanford.edu', '91-913-8450', 10, '0000-00-00', '8682485826'),
(228, 'Janina', 'Kornyshev', '7 Hayes Crossing', 'jkornyshev6b@salon.com', '88-915-1693', 12, '0000-00-00', '9978460934'),
(229, 'Lezley', 'Fiske', '032 Onsgard Lane', 'lfiske6c@hubpages.com', '19-473-6599', 12, '0000-00-00', '8897544223'),
(230, 'Rhodia', 'Rabley', '15276 Starling Alley', 'rrabley6d@spiegel.de', '22-054-6695', 4, '0000-00-00', '6044165140'),
(231, 'Elaina', 'Broader', '1 Rowland Parkway', 'ebroader6e@flavors.me', '20-428-3947', 12, '0000-00-00', '6138815017'),
(232, 'Honoria', 'Largent', '466 Glacier Hill Alley', 'hlargent6f@kickstarter.com', '09-737-4495', 9, '0000-00-00', '6687003453'),
(233, 'Rochella', 'Knell', '20747 Sutherland Junction', 'rknell6g@mac.com', '32-231-7747', 1, '0000-00-00', '7936771190'),
(234, 'Adams', 'De Roos', '571 Golf Road', 'aderoos6h@amazonaws.com', '14-460-8162', 2, '0000-00-00', '2190432251'),
(235, 'Mary', 'Hanscombe', '3 Anderson Road', 'mhanscombe6i@senate.gov', '50-875-9854', 4, '0000-00-00', '1930063083'),
(236, 'Ginny', 'Morling', '5 Independence Terrace', 'gmorling6j@theguardian.com', '77-067-4093', 8, '0000-00-00', '4551154733'),
(237, 'Emili', 'Hendriks', '8 Forest Dale Point', 'ehendriks6k@virginia.edu', '25-164-4025', 9, '0000-00-00', '2272549128'),
(238, 'Ysabel', 'Matushenko', '775 Ryan Alley', 'ymatushenko6l@dot.gov', '02-822-4496', 8, '0000-00-00', '7895987054'),
(239, 'Darlene', 'Vaudrey', '5 Esker Circle', 'dvaudrey6m@unicef.org', '94-657-7216', 10, '0000-00-00', '4921173842'),
(240, 'Abagael', 'McGilvray', '1 Bellgrove Lane', 'amcgilvray6n@delicious.com', '65-995-0441', 12, '0000-00-00', '0913308471'),
(241, 'Norry', 'Jarrard', '76248 Monica Plaza', 'njarrard6o@buzzfeed.com', '52-827-2155', 11, '0000-00-00', '6754784210'),
(242, 'Bamby', 'Hammerich', '0099 Southridge Drive', 'bhammerich6p@ft.com', '34-968-2199', 9, '0000-00-00', '5406727427'),
(243, 'Emelita', 'Esberger', '0234 Dunning Pass', 'eesberger6q@bbb.org', '05-095-4860', 3, '0000-00-00', '1412209935'),
(244, 'Zachary', 'Gostall', '4 Briar Crest Trail', 'zgostall6r@lycos.com', '19-723-9235', 9, '0000-00-00', '7235703806'),
(245, 'Anabal', 'Larrie', '979 Acker Center', 'alarrie6s@parallels.com', '54-328-5770', 7, '0000-00-00', '9711484056'),
(246, 'Timi', 'Philbin', '09 Hooker Center', 'tphilbin6t@taobao.com', '18-596-5858', 3, '0000-00-00', '9208540510'),
(247, 'Cordey', 'Bentham3', '275 Kipling Circle', 'cbentham6u@mac.com', '72-213-5439', 11, '0000-00-00', '9175212870'),
(248, 'Lowell', 'Durbin', '6929 Atwood Pass', 'ldurbin6v@wp.com', '97-970-2188', 2, '0000-00-00', '3257907648'),
(249, 'Rozelle', 'Labat', '540 Carpenter Drive', 'rlabat6w@gizmodo.com', '83-170-7295', 5, '0000-00-00', '0915321106'),
(250, 'Trevor', 'McClay', '4 Fuller Street', 'tmcclay6x@angelfire.com', '66-437-1363', 1, '0000-00-00', '4321974666');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
