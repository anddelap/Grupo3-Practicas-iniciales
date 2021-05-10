import { Component, OnInit } from '@angular/core';
import {FormControl} from '@angular/forms';
import { ServicioService } from '../../services/servicio.service';

@Component({
  selector: 'app-iniciosesion',
  templateUrl: './iniciosesion.component.html',
  styleUrls: ['./iniciosesion.component.css']
})
export class IniciosesionComponent implements OnInit {
  Password = new FormControl('');
  usuario = new FormControl('');
  constructor(private servicioService: ServicioService) { }

  ngOnInit(): void {
  }
  iniciar(): void{
    
  }
}
