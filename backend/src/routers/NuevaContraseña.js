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

router.post('/OlvidoContrasenia', (req, res) => {
    const username = req.body.username;
    const correo = req.body.correo;
    const password = req.body.password;

    var sql = "update Usuario\
                set contrasenia = '"+ password + "'\
                where username = '"+ username + "' and correo = '" + correo + "';";

    var sql2 = "select username, correo from Usuario\
    where username = '"+ username + "' and correo = '" + correo + "';";
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
                        res.send("La contraseña ha sido actualizada con exito");
                    }
                });
            }
        }
    });
});

module.exports = router;