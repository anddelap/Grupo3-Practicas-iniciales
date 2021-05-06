import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {IniciosesionComponent} from './Componentes/iniciosesion/iniciosesion.component';
import {RegistroComponent} from './Componentes/registro/registro.component';
const routes: Routes = [
  {path: '', redirectTo: '/iniciosesion', pathMatch: 'full'},
  {path: 'iniciosesion',component:IniciosesionComponent},
  {path: 'registro',component:RegistroComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
