import { Component, OnInit } from '@angular/core';
import { Juego } from 'src/app/models/Juego';
import { usuario } from 'src/app/models/usuario'

import { Router, ActivatedRoute } from '@angular/router'

@Component({
  selector: 'app-crud-usuarios',
  templateUrl: './crud-usuarios.component.html',
  styleUrls: ['./crud-usuarios.component.css']
})
export class CRUDUsuariosComponent implements OnInit {


  Juego: Juego = {
    idJuego: 0,
    nombre: '',
    descripcion: '',
    cartucho: '',
    fecha: new Date(),
    idConsola: 0
  }

  usuario: usuario = {
    Usuario: '',
    Nombres: '',
    Apellidos: '',
    Nacimiento: '',
    Correo: '',
    Password: '',
    Biografia: '',
    Cuenta: ''
  } 

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

}
