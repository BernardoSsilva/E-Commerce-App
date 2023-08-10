export class Product {
    // essa class servira para realizar as operações com a classe de serviço, a qual fara o papel de fazer o chamado a api em spring
    // essa classe tambem partilha dos atributos do banco de dados
    
    constructor(public sku:string,
                public name:string,
                public description:string,
                public unitPrice:number,
                public imageUrl:string,
                public active:boolean,
                public unitsInStock:number,
                public dateCreated: Date,
                public lastUpdate: Date
                ){

    }
}
