//variables

/*var firstName = 'alicia'; //string

firstName = 19; //number

let lastName = 'leblanc';

let fullName = '{firstName} {lastName}';

fullName = firstName + ' ' + lastName; //concatenation, add, type coercion

fullName = `${firstName} ${lastName}`; //string interpolation

const middleName = 'rose';

//middleName = 10;

let dogName = 'daisy';

let age = 22;

let happy = true;

let stranger = null;

let emotion = undefined;

let pencil = {};

console.log(typeof(dogName));
console.log(typeof(age));
console.log(typeof(happy));
console.log(typeof(stranger));
console.log(typeof(emotion));
console.log(typeof(pencil));*/

/*console.log(firstName);
console.log(typeof(firstName));

console.log(lastName);
console.log(typeof(lastName));

console.log(fullName);

console.log(middleName);*/

//functions

/*let add; //undefined

add(4,5); //undefined
print2('before');

function print() //statement function
{
    console.log(arguments[0]);
}

function print2(message) //statement function
{
    console.log(message);
    console.log(arguments[1]);

}

let add = function (a,b) //expression function
{
    return a + b;
};

function log2(data)
{
    print2(data);
}

print('goodybye');
print2(undefined, 'hello');*/

//objects

//object literal
let person = 
{
    gender: null,
    name: null,
    address: null, 
    talk: function(say)
    {
        console.log(say);
    }
};

//object constructor
function Person() //allowed to construct, behaves like an object
{
    this.gender = null;
    this.name = null;
    this.address = null;

   return this;
}

//object creator

let person5 = Object.create(person);

let person2 = person; //shallow copy

let person3 = new Person();
let person4 = new Person();

person.gender = 'alien';
person2.gender = 'zoiberg';
person3.gender = 'texan';
person4.gender = 'garfield';
person5.gender = 'minion';

/*console.log(person.gender);
console.log(person2.gender);
console.log(person3.gender);
console.log(person4.gender);
console.log(person5.gender);
console.log(person5.talk('yeet'));*/

//prototypal inheritance
let admin = //not allowed to construct
{
    role: 'clown'
};

function Admin(){
    this.role = 'clown';
    this.name = 'Terry'
}

admin.constructor = Person; //only exists in the context of the function
Admin.prototype = new Person(); //Person is the constructor, Person.constructor is empty


let alicia = Object.create(admin);
let alicia2 = new Admin();
let alicia3 = new Admin();

//alicia2.name = 'Blue';
alicia3.name = 'Eser';

//alicia.name = 'robo';

/*console.log(alicia.name);
console.log(alicia.role);*/
/*console.log(alicia2.role);
console.log(alicia2.name);
console.log(person4.gender);
console.log(alicia3.name);
console.log(alicia3.role);*/


//conditionals, loops
//falsy = false, 0, '', NaN, null, undefined | everything else is truthy

if (person)
{
    console.log('person.address'); 
}

if (1 == '1')
{
    console.log('second');
}

