import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {IniciosesionComponent} from './Componentes/iniciosesion/iniciosesion.component';
import {RegistroComponent} from './Componentes/registro/registro.component';
import {PantallaInicialComponent} from './Componentes/pantalla-inicial/pantalla-inicial.component';
import { AdministracionComponent } from './Componentes/administracion/administracion.component';
import { CRUDUsuariosComponent } from './Componentes/crud-usuarios/crud-usuarios.component';

const routes: Routes = [
  {path: '', redirectTo: '/iniciosesion', pathMatch: 'full'},
  {path: 'iniciosesion',component:IniciosesionComponent},
  {path: 'registro',component:RegistroComponent},
  {path: 'inicio',component:PantallaInicialComponent},
  {path: 'administracion',component:AdministracionComponent},
  {path: 'crud_usuarios', component: CRUDUsuariosComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
