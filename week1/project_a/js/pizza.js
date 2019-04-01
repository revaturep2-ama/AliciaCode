import {Size} from "./size.js";

function Pizza ()
{
    this.id = null;
    this.crust = null;
    this.size = new Size();
    this.toppings = [];
}

export {Pizza};