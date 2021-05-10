import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http'

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavigationComponent } from './Componentes/navigation/navigation.component';
import { IniciosesionComponent } from './Componentes/iniciosesion/iniciosesion.component';
import { RegistroComponent } from './Componentes/registro/registro.component';
import {ServicioService} from './services/servicio.service'
import {ReactiveFormsModule, FormsModule} from '@angular/forms';
import { PantallaInicialComponent } from './Componentes/pantalla-inicial/pantalla-inicial.component';
import { AdministracionComponent } from './Componentes/administracion/administracion.component';
import { CRUDUsuariosComponent } from './Componentes/crud-usuarios/crud-usuarios.component';
@NgModule({
  declarations: [
    AppComponent,
    NavigationComponent,
    IniciosesionComponent,
    RegistroComponent,
    PantallaInicialComponent,
    AdministracionComponent,
    CRUDUsuariosComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [
    ServicioService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
