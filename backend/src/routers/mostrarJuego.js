const { Router } = require('express');
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

router.get('/getJuego', (req, res) => {
    const id = req.body.idJuego;
    
    //Mostrar campos de un juego segun id solicitado
    var sql = "select * from Juego\
    where idJuego = '"+ id.toString() +  "';";

    var sql2 = "select * from Juego\
    where idJuego = '"+ id.toString() +  "';";
    var validacion = false;
    var consulta = connection.query(sql2, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            if(result.length == 0){
                res.send("No se encontro el juego buscado");
            } else{
                var consulta2 = connection.query(sql, (err, result) => {
                    if(err){
                        res.send(err);
                    } else{
                        res.send("El juego ha sido encontrado");
                    }
                });
            }
        }
    });

});

module.exports = router;