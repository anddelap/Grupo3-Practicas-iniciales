const express = require('express');
const app = express();

// SI TIRA ERROR INGRESAR LO SIGUIENTE
// ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'contraseña'; DONDE DICE CONTRASEÑA INGRESAR LA ESTABLECIDA EN MYSQL
// flush privileges;

app.use((req, res, next) => {

    // Dominio que tengan acceso (ej. 'http://example.com')
    res.setHeader('Access-Control-Allow-Origin', '*');

    // Metodos de solicitud que deseas permitir
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');

    // Encabecedados que permites (ej. 'X-Requested-With,content-type')
    res.setHeader('Access-Control-Allow-Headers', '*');

    res.setHeader('Content-Type', 'application/json');

    next();
});

// MAS CONFIGURACION
const cors = require('cors');
app.use(cors());
app.set('port', process.env.PORT || 3000);
app.use(express.json());

// ROUTERS
app.use(require('./routers/index'));
app.use(require('./routers/InicioSesion'));
app.use(require('./routers/Registro'));
app.use(require('./routers/NuevaContraseña'));

app.listen(app.get('port'), (err) =>{
    console.log("Server running on port " + app.get('port'));
});