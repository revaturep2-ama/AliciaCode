//3 -> 4 -> 2 -> 1
//user -> store -> order -> pizza

let User = require('./user');
let express = require('express');
let nunjucks = require('nunjucks');
let app = express();

nunjucks.configure({
autoescape: true,
express : app
});

app.use(express.static('./'));

app.get('/', function (req, res) 
{
    res.render('index.njk');
});

app.listen(8080, function () {

    console.log('server is up');
});

function createUser (name, address)
{
    let u = new User.u();

    u.id = name;
    u.address = name;

    console.log(u);

}

let crusts = [
    {text: 'Select Crust', value: 'none'},
    {text: 'Deep Dish', value: 'dd'},
    {text: 'Neopolitan', value: 'neo'},
    {text: 'Sicilian', value: 'sic'},
    {text: 'New York Style', value: 'ny'},
    {text: 'Standard', value: 'std'}
    
];

let locations = [

    {text: 'Select Location', value: 'none'},
    {text: 'South Cooper St', value: 'scs'},
    {text: 'North Cooper St', value: 'ncs'},
    {text: 'Curry Rd', value: 'cur'}
];

let sizes = [

    {text: 'Select Size', value: 'none'},
    {text: 'Small', value: 'sm'},
    {text: 'Medium', value: 'md'},
    {text: 'Large', value: 'lg'},
];

let toppings = [

    {text: 'Tomato Sauce', value: 'ts'},
    {text: 'Alfredo Sauce', value: 'as'},
    {text: 'Barbeque Sauce', value: 'bbq'},
    {text: 'Pesto Sauce', value: 'ps'},
    {text: 'Cheese', value: 'ch'},
    {text: 'Pepperoni', value: 'pep'},
    {text: 'Sausage', value: 'sg'},
    {text: 'Mushroom', value: 'ms'},
    {text: 'Pepper', value: 'pe'},
    {text: 'Onion', value: 'on'},
    {text: 'Broccoli', value: 'br'},
    {text: 'Chicken', value: 'ck'},
    {text: 'Bacon', value: 'ba'},
    {text: 'Spinach', value: 'sp'},
    {text: 'Pineapple', value: 'pa'},
    {text: 'Ham', value: 'ha'}
];

createUser('alicia', 'UT Arlington');