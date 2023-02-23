// Crear interfaces

// Cree una interfaz para validar el auto (el valor enviado por parametro)

interface Auto {
  encender: boolean,
  velocidadMaxima: number,
  acelerar (): void

}

const conducirBatimovil = ( auto ):void => {
  auto.encender = true;
  auto.velocidadMaxima = 100;
  auto.acelerar();
}

const batimovil:Auto = {
  encender:false,
  velocidadMaxima:0,
  acelerar(){
    console.log("...... gogogo!!!");
  }
}

// Cree una interfaz con que permita utilizar el siguiente objeto
// utilizando propiedades opcionales

interface Guason {

  reir?: boolean,
  comer?: boolean,
  llorar?: boolean  
}

const guason = {
  reir: true,
  comer:true,
  llorar:false
}

const reir = ( guason ):void => {
  if( guason.reir ){
    console.log("JAJAJAJA");
  }
}


// Cree una interfaz para la siguiente funcion

interface ciudad {
  (ciudadanos: string[]): number; 

}

const ciudadGotica: ciudad = ( ciudadanos:string[] ):number => {
  return ciudadanos.length;
}

// Cree una interfaz que obligue crear una clase
// con las siguientes propiedades y metodos

interface PropiedadPersona {
  name: string; 
  edad: number; 
  sexo: string;
  estadoCivil: string;
  imprimirBio(): void;

}

class Persona implements PropiedadPersona {
  public name: string; 
  public edad: number; 
  public sexo: string;
  public estadoCivil: string;
  imprimirBio(): string{
    return `${this.name}: ${this.edad}`
  };
}