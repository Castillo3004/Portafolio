(()=>{

    type Hero = {
        name: string,
        age?: number,
        powers: string[];
        getName?: () => string;
    }

    let myCustomVariable: (string | number | Hero) = 'Carlos';

    console.log(myCustomVariable)

    myCustomVariable = 20; 

    console.log(myCustomVariable);

    myCustomVariable = {
        
        name: 'Bruce',
        age: 43,
        powers: ['Millonario']
    }

    console.log(typeof myCustomVariable)


})()