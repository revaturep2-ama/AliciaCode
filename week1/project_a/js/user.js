import {Address} from "./address.js";
import {Order} from "./order.js";

function User ()
{
    this.id = null;
    this.address = new Address();
    this.orders = [];
}

export {User};