-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (1, '89501021V', 'David', 'Salcedo', 2, '660196547', '1964-04-17', 'davidsa@gmail.com', 'davidsa', 'davidsa');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (2, '29537424L', 'Maria', 'Sanchez', 3, '916353741', '2010-05-08', 'maria@gilmarcentro.com', 'gilmar', 'gilmar');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (3, '57430722K', 'Celia', 'Herrero', 1, '658996632', '1993-12-12', 'herrero@gmail.com', 'celiaherrero', 'celiaherrero');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (4, '12815770D', 'Bruno', 'Velasco Bravo', 4, '954899654', '1980-08-18', 'bravo@gmail.com', 'bravo9', 'bravo9');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (5, '90422933C', 'Silvia', 'Hernandez Mora', 1, '689544723', '1988-10-10', 'silvia@inmocasa.com', 'inmocasa', 'inmocasa');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (6, '22781434A', 'Alonso', 'Soler', 2, '925448965', '1976-01-04', 'alonso@gmail.com', 'alonso7', 'alonso7');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (7, '20239533Q', 'Julia', 'Torres Ortiz', 1, '698854123', '1987-10-11', 'julia@gmail.com', 'juliatorres', 'juliatorres');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (8, '43724217K', 'Vicente', 'Camacho', 2, '698854780', '1965-06-11', 'vicente@housin.com', 'housininmo', 'housininmo');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (9, '25421224Z', 'Alejandra', null, 1, '965482301', '1999-07-25', 'ale@gmail.com', 'alejandra', 'alejandra');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (10, '68618216Q', 'Andres', 'Gomez', 2, '987452362', '1956-09-10', 'gomez@gmail.com', 'gomez7', 'gomez7');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (11, '58876764F', 'Rodrigo', 'Castillo Castro', 2, '632100259', '1987-12-08', 'rcc@gmail.com', 'rodrigo', 'rodrigo');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (12, '71918848X', 'Teresa', 'Lopez Sanchez', 2, '658003214', '1991-09-18', 'teresa@inversionesreina.com', 'inversionesreina', 'inversionesreina');
-- INSERT INTO usuario(id, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (13, '65683746R', 'Administrador', null, 3, '654789958', '1991-09-18', 'admin@admin.com', 'admin', 'admin');

INSERT INTO AUTHORITIES(username, authority) VALUES ('admin', 'admin');
INSERT INTO AUTHORITIES(username, authority) VALUES ('davidsa', 'propietario');
INSERT INTO AUTHORITIES(username, authority) VALUES ('gilmar', 'propietario');
INSERT INTO AUTHORITIES(username, authority) VALUES ('celiaherrero', 'propietario');
INSERT INTO AUTHORITIES(username, authority) VALUES ('bravo9', 'cliente');
INSERT INTO AUTHORITIES(username, authority) VALUES ('inmocasa', 'propietario');
INSERT INTO AUTHORITIES(username, authority) VALUES ('alonso7', 'cliente');
INSERT INTO AUTHORITIES(username, authority) VALUES ('juliatorres', 'propietario');
INSERT INTO AUTHORITIES(username, authority) VALUES ('housininmo', 'propietario');
INSERT INTO AUTHORITIES(username, authority) VALUES ('alejandra', 'cliente');
INSERT INTO AUTHORITIES(username, authority) VALUES ('gomez7', 'cliente');
INSERT INTO AUTHORITIES(username, authority) VALUES ('rodrigo', 'cliente');
INSERT INTO AUTHORITIES(username, authority) VALUES ('inversionesreina', 'propietario');


INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (13,'Administrador', '65683746R', 'Administrador', null, 3, '654789958', '1991-09-18', 'admin@admin.com', 'admin', 'admin');

INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (1, 'Propietario', '29537424L', 'Maria', 'Sanchez', 3, '916353741', '2010-05-08', 'maria@gilmarcentro.com', 'gilmar', 'gilmar', 1, 'Gilmar Centro', 'D98828643');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (2, 'Propietario', '90422933C', 'Silvia', 'Hernandez Mora', 1, '689544723', '1988-10-10', 'silvia@inmocasa.com', 'inmocasa', 'inmocasa', 1, 'Inmocasa', 'H92374206');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (3, 'Propietario', '43724217K', 'Vicente', 'Camacho', 0, '698854780', '1965-06-11', 'vicente@housin.com', 'housininmo', 'housininmo', 1, 'Housin', 'Q5021330E');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (4, 'Propietario', '71918848X', 'Teresa', 'Lopez Sanchez', 2, '658003214', '1991-09-18', 'teresa@inversionesreina.com', 'inversionesreina', 'inversionesreina', 1, 'Inversiones Reina', 'R2223473F');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (5, 'Propietario', '57430722K', 'Celia', 'Herrero', 1, '658996632', '1993-12-12', 'herrero@gmail.com', 'celiaherrero', 'celiaherrero', 0, null, null);
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (6, 'Propietario', '20239533Q', 'Julia', 'Torres Ortiz', 1, '698854123', '1987-10-11', 'julia@gmail.com', 'juliatorres', 'juliatorres', 0, null, null);
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password, es_inmobiliaria, inmobiliaria, CIF) VALUES (7, 'Propietario', '89501021V', 'David', 'Salcedo', 2, '660196547', '1964-04-17', 'davidsa@gmail.com', 'davidsa', 'davidsa', 0, null, null);


INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (8, 'Cliente', '58876764F', 'Rodrigo', 'Castillo Castro', 2, '632100259', '1987-12-08', 'rcc@gmail.com', 'rodrigo', 'rodrigo');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (9, 'Cliente', '12815770D', 'Bruno', 'Velasco Bravo', 0, '954899654', '1980-08-18', 'bravo@gmail.com', 'bravo9', 'bravo9');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (10, 'Cliente', '22781434A', 'Alonso', 'Soler', 2, '925448965', '1976-01-04', 'alonso@gmail.com', 'alonso7', 'alonso7');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (11, 'Cliente', '25421224Z', 'Alejandra', null, 1, '965482301', '1999-07-25', 'ale@gmail.com', 'alejandra', 'alejandra');
INSERT INTO usuario(id, dtype, dni, nombre, apellidos, genero, telefono, fecha_nacimiento, email, username, password) VALUES (12, 'Cliente', '68618216Q', 'Andres', 'Gomez', 2, '987452362', '1956-09-10', 'gomez@gmail.com', 'gomez7', 'gomez7');

INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (1, 1, 'Vivienda en San Julian', '2010-05-08', 'Calle Juzgado, Barrio San Julián, Sevilla', 'Centro', 215000, 72, true, 'Primera planta', 'https://st3.idealista.com/news/archivos/styles/news_detail/public/2018-01/consejos_publicacion_foto_3.jpg', 'La entrada a la vivienda se encuentra en la planta primera del edificio (Sin ascensor). En la planta baja del piso se encuentra la cocina, el salón, una habitación con armario empotrado y un cuarto de baño completo con bañera.', 'Aire acondicionado', true, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (2, 1, 'Vivienda grande', '2015-09-18', 'Avenida Buhaira, 30, Sevilla', 'Nervion', 605000, 151, true, 'Tercera planta', 'https://img3.idealista.com/blur/WEB_LISTING_TOP/90/id.pro.es.image.master/d5/7f/2a/733661786.jpg', 'Casa Forestier está situada al este del centro de Sevilla, en el moderno y lujoso distrito de Nervión. Céntrico pero tranquilo, y a un agradable paseo del centro histórico.', 'Garaje, Trastero', true, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (3, 3, 'Vivienda en Nervion', '2020-01-13', 'Barrio Arenal - Museo, Sevilla', 'Centro', 549000, 165, false, 'Quinta planta', 'https://img3.idealista.com/blur/WEB_LISTING_TOP/0/id.pro.es.image.master/a6/3e/cc/750934600.jpg', 'Disfrute de este maravilloso piso, en pleno centro de Sevilla, en la zona del Mercado del Barranco, a un paso del Puente de Triana y al lado del barrio del Arenal, centro histórico de la ciudad.', 'Aire acondicionado', false, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (4, 4, 'Santa Justa vivienda', '2019-05-02', 'Avenida Kansas City, 36, Barrio Luis Montoto - Santa Justa, Sevilla', 'Nervion', 475.000, 123, false, 'Octava planta', 'https://img3.idealista.com/blur/WEB_LISTING/0/id.pro.es.image.master/c7/4c/31/750112795.jpg', 'Vivienda de nueva construcción completamente a estrenar en 8ª planta con 123,20 m², 3 habitaciones, 2 baños, terraza y piscinas comunitaria. Garaje y trastero en opción.', null, false, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (5, 3, 'Vivienda con vistas', '2018-10-12', 'Glorieta de las Cigarreras, 1, Sevilla', 'Los Remedios', 1150000, 337, true, 'Tercera planta', 'https://img3.idealista.com/blur/WEB_LISTING_TOP/0/id.pro.es.image.master/21/78/eb/753584893.jpg', 'Fantástica vivienda de 377 m2 construidos, en Glorieta de las Cigarreras, con espectaculares vistas al Rio Guadalquivir. Garaje y trastero.', 'Aire acondicionado', false, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (6, 5, 'Barrio La Plata', '2016-06-28', 'ROCHELAMBERT s/n, Barrio La Plata, Sevilla', 'Cerro Amate', 95260, 64, false, 'Primera planta', 'https://img3.idealista.com/blur/WEB_LISTING_TOP/0/id.pro.es.image.master/e6/30/32/739796621.jpg', 'Estupendo piso RECIÉN REFORMADO, listo para entrar a vivir. Piso consta de 63 m2, distribuidos en dos dormitorios dobles muy amplios y luminososo.', 'Aire acondicionado', true, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (7, 6, 'Casa en el Cerro', '2019-11-30', 'AFAN DE RIBERA, 102, Sevilla', 'Cerro Amate', 195960, 133, true, 'Primera planta', 'https://img3.idealista.com/blur/WEB_LISTING/0/id.pro.es.image.master/b7/de/06/756800072.jpg', '¿Buscas un piso coqueto? No esperes más lo tenemos para ti. Estupendo piso totalmente nuevo en la mejor zona del CERRO DEL ÁGUILA.', 'Aire acondicionado', false, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (8, 7, 'Vivienda en Bellavista', '2020-02-10', 'Calle Parque Guell, 4, Sevilla', 'Bellavista', 260800, 163, true, null, 'https://img3.idealista.com/blur/WEB_LISTING_TOP/0/id.pro.es.image.master/39/e3/99/750535452.jpg', 'SE VENDE ADOSADA DE NUEVA CONSTRUCCIÓN DE 163 M2 CONSTRUIDOS EN PARCELA DE 131 M2 A UN PASO DEL CENTRO DE SEVILLA. La casa dispone de porche delantero con acceso peatonal y acceso para vehículo (garaje).', 'Jardín', false, 'Martes 8:00-13:00');
INSERT INTO vivienda(id, propietario_id, titulo, fecha_publicacion, direccion, zona, precio, dimensiones, amueblado, planta ,foto, caracteristicas, equipamiento, publicitado, horario_visita) VALUES (9, 2, 'Pino Montano', '2020-08-03', 'Calle Mar de Alboran, Sevilla', 'Pino Montano', 50800, 52, true, 'Sexta planta', 'https://img3.idealista.com/blur/WEB_LISTING/0/id.pro.es.image.master/f9/07/6d/741356370.jpg', 'Ya tenemos disponible este estupendo piso justo frente al ambulatorio de calle Mar de Alboran, el edificio tiene ascensor, con todo tipo de negocios en la zona y linea de autobuses con muy buena comunicación.', null, false, 'Martes 8:00-13:00');

INSERT INTO USUARIO_FAVORITAS (cliente_id, favoritas_id) VALUES (10, 2);
INSERT INTO USUARIO_FAVORITAS (cliente_id, favoritas_id) VALUES (10, 6);
INSERT INTO USUARIO_FAVORITAS (cliente_id, favoritas_id) VALUES (11,8);

INSERT INTO USUARIO_FAVORITAS (cliente_id, favoritas_id) VALUES (10, 2);
INSERT INTO USUARIO_FAVORITAS (cliente_id, favoritas_id) VALUES (10, 6);
INSERT INTO USUARIO_FAVORITAS (cliente_id, favoritas_id) VALUES (11,8);

INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (1, 2, 0, 2, 'Habitación doble con cama de matrimonio', 'https://d1vp8nomjxwyf1.cloudfront.net/wp-content/uploads/sites/406/2019/11/12151329/23.-COM-800x533.jpg');
INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (2, 2, 1, null, 'Cocina amueblada con horno, microondas, frigorifico', 'https://i.pinimg.com/originals/f8/af/17/f8af17df7fa83f09cc403065859c4414.jpg');
INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (3, 4, 0, 1, 'Habitación individual', 'https://d1bvpoagx8hqbg.cloudfront.net/originals/habitacion-estudiantes-casa-familia-aa8c8a0f835c7a0b15f3f68d849a1d88.jpg');
INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (4, 7, 2, null, 'Habitación doble con cama de matrimonio', 'https://d1vp8nomjxwyf1.cloudfront.net/wp-content/uploads/sites/406/2019/11/12151329/23.-COM-800x533.jpg');
INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (5, 5, 4, null, null, null);
INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (6, 5, 1, null, 'Cocina nueva', 'https://i.blogs.es/1c5aea/planificacion-diseno-y-supervision-del-proyecto-eitan-cohen-studio-etn-creditos-de-imagenes-de-shay-epstein/450_1000.jpeg');
INSERT INTO habitacion(id, vivienda_id, tipo_habitacion, num_camas, caracteristicas, foto) VALUES (7, 9, 3, null, 'Comedor moderno', 'https://cdn.portobellostreet.es/imagenes_muebles/Muebles-Comedor-vintage-Maze.jpg');


INSERT INTO compra(id, cliente_id, vivienda_id, precio_final, estado, comentario) VALUES (1, 9, 1, 215.000, 0, null);
INSERT INTO compra(id, cliente_id, vivienda_id, precio_final, estado, comentario) VALUES (2, 11, 3, 549.000, 1, 'No estoy de acuerdo con la oferta que ofrece');
INSERT INTO compra(id, cliente_id, vivienda_id, precio_final, estado, comentario) VALUES (3, 10, 6, 195.960, 0, 'Muchas gracias');
INSERT INTO compra(id, cliente_id, vivienda_id, precio_final, estado, comentario) VALUES (4, 9, 8, 260.800, 2, null);

INSERT INTO visita(id, cliente_id, vivienda_id, fecha, lugar) VALUES (1, 9, 1, '2019-10-23', 'Calle Juzgado, Sevilla');
INSERT INTO visita(id, cliente_id, vivienda_id, fecha, lugar) VALUES (2, 9, 6, '2020-01-15', 'Cerro Amate');
INSERT INTO visita(id, cliente_id, vivienda_id, fecha, lugar) VALUES (3, 9, 2, '2019-03-26', 'Avenida Buhaira, Nervion, Sevilla'); 

INSERT INTO valoracion(id, visita_id, puntuacion, comentario) VALUES (1, 1, 4, 'Me ha gustado mucho');

INSERT INTO mensaje(id, client, prop, asunto, cuerpo, emisor_id, receptor_id) VALUES (1,8,1,'Casa en venta','Es un poco cara',1,8);

