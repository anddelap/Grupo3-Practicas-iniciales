import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {
  Password = new FormControl('');
  usuario = new FormControl('');
  Nombres = new FormControl('');
  Apellidos = new FormControl('');
  Fecha = new FormControl('');
  Correo = new FormControl('');
  Biografia = new FormControl('');
  constructor() { }

  ngOnInit(): void {
  }
  registrar():void{

  }
}
