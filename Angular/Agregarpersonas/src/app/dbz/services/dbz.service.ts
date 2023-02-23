import { Injectable } from '@angular/core';

import { Personaje } from '../interfaces/dbz.interface';

@Injectable()
export class DbzService {



  private _personajes: Personaje[] = [
    {
      nombre: 'Goku',
      poder: 15000,
    },
  ];

  get personajes(): Personaje[]{
    return [...this._personajes]; // El [...] operador spread:  separa cada uno de los elementos independitens y crea uno nuevo
  }

  constructor() {
  }

  agregarPersonaje(personaje: Personaje){
    this._personajes.push(personaje);
  }


}
