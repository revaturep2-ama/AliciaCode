/*let express = require('express.js')
let app = express();

app.get('/', function (req, res){

    app.res("count");
});*/

let txt = "Don't cry because it's over, smile because it happened. \
Be yourself; everyone else is already taken. \
A room without books is like a body without a soul. \
You only live once, but if you do it right, once is enough. \
If you tell the truth, you don't have to remember anything. \
Without music, life would be a mistake. \
Insanity is doing the same thing, over and over again, but expecting different results. \
Life is what happens to us while we are making other plans. \
A woman is like a tea bag; you never know how strong it is until it's in hot water. \
Love all, trust a few, do wrong to none.";

let char = null, word = null, count = [];

let entry = txtCount();
let regexChar = /[a-z]/;
let regexWord = /[\w]/;

txtCount(regexChar, regexWord, txt)
{
    if (regexChar.test(txt) = true){
        
        c = null;
       
        for (c = 0, i > 0; i++;)
        {
            if (/[a-z]/ == true)
            {
                c = i + 1;
            }

            else
            {
              return;
            }
        };
        

        count.push(c);

        return (console.log('char pushed'));
    };

    if (regexWord.test(txt) = true){
        
        w = null;
       
        for (w = 0, i > 0; i++;)
        {
            if (/[\w]/ == true)
            {
                w = i + 1;
            }

            else
            {
              return;
            }
        };
        

        count.push(w);

        return (console.log('word pushed'));
    };


}

txtCount();
