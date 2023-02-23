import { Component } from '@angular/core';

import { Personaje } from '../interfaces/dbz.interface';



@Component({
  selector: 'app-main-page',
  templateUrl: './main-page.component.html'
})


export class MainPageComponent {

  // personajes: Personaje[]=[]

  nuevo: Personaje = {
    nombre: '',
    poder: NaN
  }

  constructor(){
    // this.personajes = this.dbzService.personajes;
  }
  // get personajes():Personaje[]{
  //   return this.dbzService.personajes
  // }

  // agregarNuevoPersonaje(argumento: Personaje) {
  //   this.personajes.push(argumento);
  // }



}
