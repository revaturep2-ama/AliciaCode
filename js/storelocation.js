let Address = require("./address.js");
//import {Order} from "./order.js";

   let storeLocationCollection = 
{
    SCooper: new StoreLocation('SCooper'),
    NCooper: new StoreLocation('NCooper'),
    Curry: new StoreLocation('Curry')

    // new StoreLocation(new Address('S Cooper St', 'Arlington', 'Texas', '76015')),
    // new StoreLocation(new Address('N Cooper St', 'Arlington', 'Texas', '76011')),
    // new StoreLocation(new Address('Curry Rd', 'Arlington', 'Texas', '76001')
   
    
};

function StoreLocation ()
{
    this.id = null;
   // this.name = sl;
    this.address = new Address();
    this.orders = [];

}

function getOrder()
{

}


module.exports = {s: StoreLocation, sc: storeLocationCollection};