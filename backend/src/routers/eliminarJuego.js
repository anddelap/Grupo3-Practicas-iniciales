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

router.post('/eliminarJuego', (req, res) => {
    const id = req.body.idJuego;
    
    //Eliminar campos de un juego segun id solicitado
    var sql = "delete from Juego where idJuego = '"+ id.toString() + "';";

    var sql2 = "select * from Juego\
    where idJuego = '"+ id.toString() +  "';";
    var validacion = false;
    var consulta = connection.query(sql2, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            if(result.length == 0){
                res.send("Uno de los parametros obligatorios no coincide");
            } else{
                var consulta2 = connection.query(sql, (err, result) => {
                    if(err){
                        res.send(err);
                    } else{
                        res.send("El juego ha sido eliminado con exito");
                    }
                });
            }
        }
    });

});

module.exports = router;