const { Router } = require('express');
const router = Router();
import DatoJuego from './clasePrueba.js';
import JuegDisponibles from './listadoJuegos.js';
// CREATE A CONNECTION TO THE DATABASE
var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Marcos_2021', //CONTRASEÑA DE MYSQL
    database: 'proyecto', // NOMBRE DE LA BASE DE DATOS
    port: 3306
});

router.get('/CargarModelo', function(req, res) {
    var respuesta = "";
    var sql = "create table Consola(\
        idConsola int auto_increment not null,\
        nombre varchar(45),\
        primary key(idConsola)\
    );";

    var sql2 = "create table Juego(\
        idJuego int auto_increment not null,\
        nombre varchar(45),\
        descripcion varchar(445),\
        cartucho varchar(245),\
        fecha int,\
        idConsola int not null,\
        primary key(idJuego),\
        foreign key(idConsola) references Consola(idConsola)\
   );";

   var sql3 = "create table Usuario(\
	idUsuario int auto_increment not null,\
    nombre varchar(45),\
    username varchar(45),\
    correo varchar(45),\
    contrasenia varchar(45),\
    biografia varchar(45),\
    fecha date,\
    primary key(idUsuario)\
    );";

    var sql4 = "create table Biblioteca(\
        idBiblioteca int not null auto_increment,\
        idUsuario int not null,\
        idJuego int not null,\
        puntuacion int,\
        opinion varchar(45),\
        primary key(idBiblioteca),\
        foreign key(idUsuario) references Usuario(idUsuario),\
        foreign key(idJuego) references Juego(idJuego)\
    );";

    var sql5 = "create table Publicacion(\
        idPublicacion int not null auto_increment,\
        fecha date,\
        idUsuario int not null,\
        idJuego int not null,\
        comentario varchar(45),\
        primary key(idPublicacion),\
        foreign key(idUsuario) references Usuario(idUsuario),\
        foreign key(idJuego) references Juego(idJuego)\
    );";

    var sql6 = "create table Comentario(\
        idComentario int not null auto_increment,\
        idUsuario int not null,\
        idPublicacion int not null,\
        comentario varchar(45),\
        primary key(idComentario),\
        foreign key(idUsuario) references Usuario(idUsuario),\
        foreign key(idPublicacion) references Publicacion(idPublicacion)\
    );";

    //RECORRER EL ARRAY DE JUEGOS E INSERTAR CADA UNO EN LA BD SI ALGUIEN PUEDE VER SI ME FUNCIONA ESTE CODIGO O DEBO ARREGLARLO ME AVISA PORFA NO SE MUCHO DE JS.

    for (i=0; i < JuegDisponibles.length; i++) {
        
        "INSERT INTO Juego (nombre, descripcion, cartucho, fecha, idConsola)\
        VALUES (" + JuegDisponibles[i].getNombre() + "," +  JuegDisponibles[i].getDescripcion() + " , " + JuegDisponibles[i].getCartucho(), ", " + (JuegDisponibles[i].getFecha()).toString() + ", " + (JuegDisponibles[i].getConsola()).toString() + ");" ;
        }


    var consulta = connection.query(sql, (err, result) => {
        if(err){
            respuesta += "Ocurrio un error en la creacion";
            res.send(respuesta);
        } else{
            respuesta += "La tabla Consola ha sido creada con exito\n";
        }
    });

    var consulta1 = connection.query(sql2, (err, result) => {
        if(err){
            respuesta += "Ocurrio un error en la creacion de la tabla";
            res.send(respuesta);
        } else{
            respuesta += "La tabla Juego ha sido creada con exito\n";
        }
    });

    var consulta2 = connection.query(sql3, (err, result) => {
        if(err){
            respuesta += "Ocurrio un error en la creacion de la tabla\n";
            res.send(respuesta);
        } else{
            respuesta += "La tabla Usuario ha sido creada con exito\n";
        }
    });

    var consulta3 = connection.query(sql4, (err, result) => {
        if(err){
            respuesta += "Ocurrio un error en la creacion de la tabla";
            res.send(respuesta);
        } else{
            respuesta += "La tabla Biblioteca ha sido creada con exito\n";
        }
    });

    var consulta4 = connection.query(sql5, (err, result) => {
        if(err){
            respuesta += "Ocurrio un error en la creacion de la tabla";
            res.send(respuesta);
        } else{
            respuesta += "La tabla Publicacion ha sido creada con exito\n";
        }
    });

    var consulta5 = connection.query(sql6, (err, result) => {
        if(err){
            respuesta += "Ocurrio un error en la creacion de la tabla";
            res.send(respuesta);
        } else{
            respuesta += "La tabla Comentario ha sido creada con exito\n";
            res.send(respuesta);
        }
    });
});

router.post('/InicioSesion', function(req, res){
    const usuario = req.body.user;
    const contra = req.body.password;

    var sql = "select username, contrasenia from Usuario\
                where username = '" + usuario + "' and \
                contrasenia = '"+ contra + "';"

    var consulta = connection.query(sql, (err, result) => {
        if(err){
            res.send(err);
        } else{
            res.json(result);
        }
    });
});


module.exports = router;