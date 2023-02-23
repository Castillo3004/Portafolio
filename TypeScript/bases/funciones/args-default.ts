(()=>{

    const fullName = (firstName:string, lastName?:string, upper: boolean = false): string =>{
        
        if (upper){
            return `${firstName} ${lastName || '---'}`.toUpperCase();
        }

        if( !firstName){
            throw new Error('Nombre requerido')
        }

        return `${ firstName} ${lastName || '----'} ` ;
    }


    const name = fullName('Tony', 'Stark', true);

    console.log({ name });


})()