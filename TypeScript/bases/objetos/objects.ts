(()=>{ 

    let flash: { name:string, age?:number, powers:string[], getName?: () => string } = {
        name: 'Barry Allen',
        age: 24,
        powers: ['Super Velocidad', 'Viajar en el tiempo']
    }
    

    let superman: { name:string, age?:number, powers:string[], getName?: () => string } = {
        name: 'Clark Kent',
        age: 60,
        powers: ['Super Velocidad']
    }
    
    console.log(flash)

  

})()