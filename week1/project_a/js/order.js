import {Pizza} from "./pizza.js";

function Order ()
{
    this.id = null;
    this.pizzas = [];
    this.cost = function ()
    {
        let sum = 0;
        
        this.pizzas.forEach (function (pi) 
        {
            sum += pi.size.price;
        });
        

        return sum;
    }
}

export {Order};