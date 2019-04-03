import {Location} from "./location.js";
import {User} from "./user.js";
import { Pizza } from "./pizza.js";
import { Order } from "./order.js";

function validatePizza()
{
    let crustCollection = document.querySelector('select[name="crust"]');
    let sizeCollection = document.querySelectorAll('input[name="size"]');
    let toppingCollection = document.querySelectorAll('input[name="toppings"]');
    let crust = null, size = null, toppings = [];

    
    sizeCollection.forEach(function (s){

        if (s.checked)
        {
            size = s.value;
        }

    });

    toppingCollection.forEach(function (t)
    {
        if (t.checked)
        {
            toppings.push(t.value);
        }

    });

    if (!size)
    {
       return;
    }

    if (toppings.length == 0)
    {
        return;
    }

    if (crustCollection.value.toLowerCase() == "none")
    {
        return;
    }
    else 
    {
        crust = crustCollection.value;
    }
       
        
       
   pizzas.push(new Pizza(crust, size, toppings));

   addToOrderCart(pizzas);

}

function addToOrderCart(p)
{
    let orderCart = document.querySelector('#orderCart');

    orderCart.innerHTML = '';

    for (let i = 0; i < p.length; i += 1)
    {
        let li = document.createElement('li');

        li.innerHTML = `${p[i].size.name} ${p[i].crust} with ${p[i].toppings} for $ ${p[i].size.price}`;

        orderCart.appendChild(li);
    }
}

function createOrder ()

{
    let order = new Order();

    order.pizzas = pizzas;
    console.log(order.cost());
}

let pizzas = [];
let addPizza = document.querySelector('#addPizza');

let placeOrder = document.querySelector('#placeOrder');

if (addPizza)
{
    addPizza.addEventListener('click', validatePizza);
};

if (placeOrder)
{
    placeOrder.addEventListener('click', createOrder);
}