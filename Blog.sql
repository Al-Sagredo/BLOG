ALTER SESSION SET
"_ORACLE_SCRIPT" = TRUE;

--1. Crear usuario blog y asignar todos los permisos.
CREATE USER blog IDENTIFIED BY 123;

GRANT ALL PRIVILEGES TO blog;
--me conecto como blog desde dbeaver
CREATE TABLE usuario (id NUMBER PRIMARY KEY,
email varchar2(25));

--2. Crear las tablas indicadas de acuerdo al modelo de datos.
CREATE TABLE post(id NUMBER PRIMARY KEY,
usuario_id NUMBER REFERENCES usuario(id),
titulo varchar2(50),
fecha DATE);

CREATE TABLE comentario(
id NUMBER PRIMARY KEY,
post_id NUMBER REFERENCES post(id),
usuario_id NUMBER REFERENCES usuario(id),
texto varchar2(100),
fecha DATE);

--3. Insertar los registros
INSERT INTO usuario (id, email) values(1, 'usuario01@hotmail.com');
INSERT INTO usuario (id, email) values(2, 'usuario02@gmail.com');
INSERT INTO usuario (id, email) values(3, 'usuario03@gmail.com');
INSERT INTO usuario (id, email) values(4, 'usuario04@hotmail.com');
INSERT INTO usuario (id, email) values(5, 'usuario05@yahoo.com');
INSERT INTO usuario (id, email) values(6, 'usuario06@hotmail.com');
INSERT INTO usuario (id, email) values(7, 'usuario07@yahoo.com');
INSERT INTO usuario (id, email) values(8, 'usuario08@yahoo.com');
INSERT INTO usuario (id, email) values(9, 'usuario09@yahoo.com');

INSERT INTO post (id, usuario_id, titulo, fecha) values(1, 1, 'Post 1: Esto es malo', TO_DATE('2020-06-29', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(2, 5, 'Post 2: Esto es malo', TO_DATE('2020-06-20', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(3, 1, 'Post 3: Esto es excelente', TO_DATE('2020-05-30', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(4, 9, 'Post 4: Esto es bueno', TO_DATE('2020-05-09', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(5, 7, 'Post 5: Esto es bueno', TO_DATE('2020-07-10', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(6, 5, 'Post 6: Esto es excelente', TO_DATE('2020-07-18', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(7, 8, 'Post 7: Esto es excelente', TO_DATE('2020-07-07', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(8, 5, 'Post 8: Esto es excelente', TO_DATE('2020-05-14', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(9, 2, 'Post 9: Esto es bueno', TO_DATE('2020-05-08', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(10, 6,'Post 10: Esto es bueno', TO_DATE('2020-06-02', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(11, 4, 'Post 11: Esto es bueno', TO_DATE('2020-05-05', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(12, 9, 'Post 12: Esto es malo', TO_DATE('2020-07-23', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(13, 5, 'Post 13: Esto es excelente', TO_DATE('2020-05-30', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(14, 8, 'Post 14: Esto es excelente', TO_DATE('2020-05-01', 'YYYY-MM-DD'));
INSERT INTO post (id, usuario_id, titulo, fecha) values(15, 7, 'Post 15: Esto es MALO', TO_DATE('2020-06-17', 'YYYY-MM-DD'));

INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(1, 3, 1, 'Este es el comentario 1', TO_DATE('2020-07-08', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(2, 4, 2, 'Este es el comentario 2', TO_DATE('2020-06-07', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(3, 6, 3,'Este es el comentario 3', TO_DATE('2020-06-16', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(4, 2, 4,'Este es el comentario 4', TO_DATE('2020-06-15', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(5, 6, 5,'Este es el comentario 5', TO_DATE('2020-05-14', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(6, 3, 6, 'Este es el comentario 6', TO_DATE('2020-07-08', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(7, 6, 7,'Este es el comentario 7', TO_DATE('2020-05-22', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(8, 6, 8, 'Este es el comentario 8', TO_DATE('2020-07-09', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(9, 8, 9, 'Este es el comentario 9', TO_DATE('2020-06-30', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(10, 8, 10, 'Este es el comentario 10', TO_DATE('2020-06-19', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(11, 5, 11, 'Este es el comentario 11', TO_DATE('2020-05-09', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(12, 8, 12, 'Este es el comentario 12', TO_DATE('2020-06-17', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(13, 1, 13, 'Este es el comentario 13', TO_DATE('2020-05-01', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(14, 2, 14, 'Este es el comentario 14', TO_DATE('2020-05-31', 'YYYY-MM-DD'));
INSERT INTO comentario(id, usuario_id, post_id, texto, fecha) values(15, 4, 15, 'Este es el comentario 15', TO_DATE('2020-06-28', 'YYYY-MM-DD'));

COMMIT;

--4. Seleccionar el correo, id y título de todos los post publicados por el usuario.
SELECT y.email, x.id, x.titulo
FROM post x
INNER JOIN usuario y 
ON x.usuario_id = y.id
WHERE y.id=5; 

--5. Listar el correo, id y el detalle de todos los comentarios que no hayan sido realizados
--por el usuario con email usuario06@hotmail.com
SELECT y.email, x.id, x.texto
FROM comentario x
	INNER JOIN usuario y
	ON x.usuario_id = y.id 
WHERE y.email <> 'usuario06@hotmail.com';

--6. Listar los usuarios que no han publicado ningún post.
SELECT x.email 
FROM usuario x
	LEFT JOIN post y
	ON x.id = y.usuario_id
WHERE y.id IS NULL;

--7. Listar todos los post con sus comentarios (incluyendo aquellos que no poseen comentarios).
SELECT x.*, y.texto
FROM post x
	LEFT JOIN comentario y 
	ON x.id = y.post_id;

--8. Listar todos los usuarios que hayan publicado un post en Junio.
SELECT x.*, y.fecha
FROM usuario x
	INNER JOIN post y
	ON x.id = y.usuario_id
	WHERE y.fecha IN 
	(SELECT y.fecha FROM post WHERE (EXTRACT(MONTH FROM y.fecha)) = 6);

