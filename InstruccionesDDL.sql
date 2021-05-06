/*create database proyecto;
*/
use proyecto;
create table Consola(
	idConsola int auto_increment not null,
    nombre varchar(45),
    primary key(idConsola)
);

create table Juego(
	 idJuego int auto_increment not null,
     nombre varchar(45),
     descripcion varchar(45),
     cartucho varchar(45),
     fecha date,
     idConsola int not null,
     primary key(idJuego),
     foreign key(idConsola) references Consola(idConsola)
);

create table Usuario(
	idUsuario int auto_increment not null,
    nombre varchar(45),
    username varchar(45),
    correo varchar(45),
    contrasenia varchar(45),
    biografia varchar(45),
    fecha date,
    primary key(idUsuario)
);

create table Biblioteca(
	idBiblioteca int not null auto_increment,
    idUsuario int not null,
    idJuego int not null,
    puntuacion int,
    opinion varchar(45),
    primary key(idBiblioteca),
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idJuego) references Juego(idJuego)
);

create table Publicacion(
	idPublicacion int not null auto_increment,
    fecha date,
    idUsuario int not null,
    idJuego int not null,
    comentario varchar(45),
    primary key(idPublicacion),
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idJuego) references Juego(idJuego)
);

create table Comentario(
	idComentario int not null auto_increment,
    idUsuario int not null,
    idPublicacion int not null,
    comentario varchar(45),
    primary key(idComentario),
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idPublicacion) references Publicacion(idPublicacion)
);