import { Component, HostBinding, OnInit } from '@angular/core';
import { Juego } from 'src/app/models/Juego';
import { usuario } from 'src/app/models/usuario'
import { Publicacion } from 'src/app/models/Publicacion'

import { Router, ActivatedRoute } from '@angular/router'

@Component({
  selector: 'app-pantalla-inicial',
  templateUrl: './pantalla-inicial.component.html',
  styleUrls: ['./pantalla-inicial.component.css']
})
export class PantallaInicialComponent implements OnInit {

  @HostBinding('class') classes = 'row';

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

  Publicacion: Publicacion = {
    idPublicacion: 0,
    fecha: new Date(),
    idUsuario: 0,
    idJuego: 0,
    comentario: '',
  }



  edit: boolean = false;

  constructor() { }

  ngOnInit(): void {
  }

}
