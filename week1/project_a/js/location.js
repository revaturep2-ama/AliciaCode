import {Address} from "./address.js";
import {Order} from "./order.js";

function Location ()
{
    this.id = null;
    this.address = new Address();
    this.orders = [];
}

export {Location};