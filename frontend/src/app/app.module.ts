import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavigationComponent } from './Componentes/navigation/navigation.component';
import { IniciosesionComponent } from './Componentes/iniciosesion/iniciosesion.component';
import { RegistroComponent } from './Componentes/registro/registro.component';
import {ServicioService} from './services/servicio.service'
import {ReactiveFormsModule, FormsModule} from '@angular/forms';
@NgModule({
  declarations: [
    AppComponent,
    NavigationComponent,
    IniciosesionComponent,
    RegistroComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [
    ServicioService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
