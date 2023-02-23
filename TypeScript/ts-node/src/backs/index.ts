// import * as HeroClasses from "./classes/Hero";
// import powers from "./data/powers";
// import { Hero } from "./classes/Hero";


import { printObject, genericFunction, genericFunctionArrow } from "../generics/generics";
import { Villain, Hero } from "../interfaces";

// import { Hero } from "./interfaces/hero";
// import { Villain } from "./interfaces/villain";



// console.log('Hola Mundo!');

// const Hero = 123;

// const ironman = new Hero('Ironman', 1, 33)


// console.log(ironman);
// console.log(ironman.power)


// printObject(123);
// printObject(new Date());
// printObject({a:1, b:3, c:3});
// printObject([1,2,3,4,5,6,7,8,9,10]);
// printObject('Hola Mundo')

///////////////////////////

// const name: string = 'Carlos'


// console.log(genericFunctionArrow(3.141629).toFixed(2))
// console.log(genericFunctionArrow(name).toUpperCase())
// console.log(genericFunctionArrow(new Date()).getDate())

const deadpool = {
    name: 'Deadpool',
    realName: 'Wade Winston Wilson',
    dangerLevel: 130
}

console.log(genericFunctionArrow<Villain>(deadpool).dangerLevel); 