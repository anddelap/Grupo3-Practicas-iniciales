const { Router, response } = require('express');
const router = Router();

// CREATE A CONNECTION TO THE DATABASE
var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Marcos_2021', //CONTRASEÑA DE MYSQL
    database: 'proyecto', // NOMBRE DE LA BASE DE DATOS
    port: 3306
});

router.post('/RegistroJuego', (req, res) => {
    const nombre = req.body.nombre;
    const descripcion = req.body.descripcion;
    const linkCartucho = req.body.cartucho;
    const fecha = req.body.fecha;
    const idConsola = req.body.idConsola;
    const idJuego = req.body.idJuego;
    

    var sql = "insert into Juego (nombre, descripcion, cartucho, fecha, idConsola)\
               values('"+ nombre + " , " + descripcion + "','" + linkCartucho + "','" + fecha.toString() + "','" + idConsola.toString() + " );";

    var sql2 = "select * from Juego\
               where nombre = '" + nombre + "';";
    var validacion = false;
    var consulta = connection.query(sql2, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            if(result.length == 0){
                var consulta2 = connection.query(sql, (err, result) => {
                    if(err){
                        res.send(err);
                    } else{
                        res.send("Juego creado con exito");
                    }
                });
            } else{
                res.send("El nombre del juego ya existe");
            }
        }
    });
});

module.exports = router;