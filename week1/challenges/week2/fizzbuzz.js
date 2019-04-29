
let num = document.querySelector('input[name = "number"]');
let counter = [];

let fizzBuzz = function fb (counter)
{
    
    function up(counter)
    {
        num = Number++;
        counter.value.push(numb);
    }

    for (let i = 1; i < num.length; i += 1)
    {
        if (num.length == counter.value% 5)
        {
            return "Buzz!";
        }

        else if (num.length == counter.value% 3)
        {
            return "Fizz!";
            
        }

        else if (num.length == counter.value% 5 && counter.value% 3)
        {
            return "Fizz Buzz!";
        }

        else(num.length != counter.value% 5 && counter.value% 3)
        {
            return counter.value;
        }

    }


};

let countUp = document.querySelector('#counter');

if (countUp)
{
    countUp.addEventListener('click', fizzBuzz);
}