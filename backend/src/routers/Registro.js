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

router.post('/Registro', (req, res) => {
    const username = req.body.username;
    const nombres = req.body.nombres;
    const apellidos = req.body.apellidos;
    const fecha_nac = req.body.fecha_nac;
    const correo = req.body.correo;
    const password = req.body.password;
    const biografia = req.body.biografia;

    var sql = "insert into Usuario(nombre, username, correo, contrasenia, biografia, fecha)\
               values('"+ nombres + " " + apellidos + "','" + username + "','" + correo + "','" + password + "','" + biografia + "',\
               STR_TO_DATE('"+ fecha_nac + "', '%d/%m/%Y')\
               );";

    var sql2 = "select username, contrasenia from Usuario\
               where username = '" + username + "' and \
               contrasenia = '"+ password + "';"
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
                        res.send("Usuario creado con exito");
                    }
                });
            } else{
                res.send("El nombre de usuario ya existe");
            }
        }
    });
});

module.exports = router;