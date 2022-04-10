create database ejercicio_practico;

use ejercicio_practico;

create table usuarios(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) not null,
    email varchar(50) not null unique
);


create table notas(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo varchar(100) not null,
    date_create datetime NOT NULL,
    date_update datetime NOT NULL,
    descripcion VARCHAR(300) not null,
    borrar boolean,
    id_usuario int unsigned not null,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

create table acciones(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    accion varchar(50) not null
);

create table gestiones(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario int unsigned not null,
    id_nota int unsigned not null,
    id_accion int unsigned not null,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_nota) REFERENCES notas(id),
    FOREIGN KEY (id_accion) REFERENCES acciones(id)
);


create table categorias(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) not null
);

create table nota_categoria(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_categoria int unsigned not null,
    id_nota int unsigned not null,
    FOREIGN KEY (id_nota) REFERENCES notas(id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

