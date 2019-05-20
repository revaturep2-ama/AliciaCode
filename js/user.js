let Address = require("./address.js");
//let Order = require("./order.js");

let userCollection = [

    new User(1),
    new User(2),
    new User(3),
    new User(4),
    new User(5)

];

function User ()
{
    this.id = null;
    this.address = new Address();
    this.orders = [];

}

module.exports = {u: User, uc: userCollection};