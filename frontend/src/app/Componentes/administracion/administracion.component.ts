import { Component, HostBinding, OnInit } from '@angular/core';
import { Juego } from 'src/app/models/Juego';
import { usuario } from 'src/app/models/usuario'

import { Router, ActivatedRoute } from '@angular/router'

@Component({
  selector: 'app-administracion',
  templateUrl: './administracion.component.html',
  styleUrls: ['./administracion.component.css']
})
export class AdministracionComponent implements OnInit {

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

  edit: boolean = false;

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

}
