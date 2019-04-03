import {Location} from "./location.js";
import {User} from "./user.js";

function validateOrder()
{
    var sizeElem = document.getElementById('input [name = "size"] input[checked = true]');
    var topElem = document.getElementById('input [name = "toppings"] input[checked = true]');

    /*let size = document.querySelector('input[name="size"] input[checked = true]');
    let toppings = document.querySelectorAll('input[name="toppings"] input[checked = true]');*/
 

    if (!sizeElem)
    {
       console.log(('no size selected'));
       return;
    }

    if (topElem.length == 0)
    {
        console.log(('no toppings selected'));
        return;
    }

    
        console.log(("order complete"));
     

}
    

    



let placeOrder = document.querySelector('#placeOrder');

if (placeOrder)
{
    placeOrder.addEventListener("click", validateOrder());
}

