(()=>{

    interface Client{
        name: string,
        age?: number,
        address: Address,
        getFullAddress (id: string): string;
    }


    interface Address{
        id: number; 
        zip: string;
        city: string;
    }

    const client: Client = {
        name: 'Carlos',
        age: 21,
        address: {
            id: 125, 
            zip: '110104',
            city: 'Loja'
        },
        getFullAddress(id: string){
            return this.address.city
        }    
    }


    const client2: Client = {

        name: 'Salome',
        age: 21, 
        address: {
            city: 'Cuenca',
            id: 120,
            zip: 'Nose'
        },
        getFullAddress(id: string){
            return this.address.city
        }    
    }




})()