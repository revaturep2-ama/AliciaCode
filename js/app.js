let storeLocationCollection = require("./storelocation.js");
let userCollection = require("./user.js");
let Pizza = require("./pizza.js");
let Order = require("./order.js");

function validatePizza()
{
    let userCollection = document.querySelector('select[name="user"]');
    let storeCollection = document.querySelector('select[name = "store"]');
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

    if (userCollection.value.toLowerCase() == 'none')
    {
        return;
    }
       
    if (storeCollection.value.toLowerCase() == 'none')
    {
        return;
    }
           
    crust = crustCollection.value;
   pizzas.push(new Pizza(crust, size, toppings));
   user = userCollection.value;
   store = storeCollection.value;

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

    attachStore(store, order);
    attachUser(user, order);
}

function attachStore(sl, o)
{
    let store = new storeLocationCollection[sl];

    store.orders.push(o);
}

function attachUser (u, o)
{
    let user = new User();

    user.orders.push(o);
}


let pizzas = [];
let user = null;
let store = null;
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