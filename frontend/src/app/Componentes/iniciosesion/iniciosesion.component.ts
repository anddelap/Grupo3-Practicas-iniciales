import { Component, OnInit } from '@angular/core';
import {FormControl} from '@angular/forms';
@Component({
  selector: 'app-iniciosesion',
  templateUrl: './iniciosesion.component.html',
  styleUrls: ['./iniciosesion.component.css']
})
export class IniciosesionComponent implements OnInit {
  Password = new FormControl('');
  usuario = new FormControl('');
  constructor() { }

  ngOnInit(): void {
  }
  iniciar(): void{
    
  }
}
