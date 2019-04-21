let Size = require("./size.js");

let pizzaSizes = [
    new Size('small', 5),
    new Size('medium', 10),
    new Size('large', 15)
];

function Pizza (c, s, t)
{
    this.id = null;
    this.crust = c;
    this.size = getSize(s);
    this.toppings = t;
}

function getSize (s)
{

    for (let i = 0; i < pizzaSizes.length; i += 1)
    {
        if (pizzaSizes[i].name.toLowerCase() == s.toLowerCase()) 
        {
            return pizzaSizes[i];
        }
    }

}

module.exports = Pizza;