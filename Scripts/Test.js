//DisplayTab('CloudBound');

function DisplayTab(tabName)
{
    var i;
    var x = document.getElementsByClassName("Tab");
    for (i = 0; i < x.length; i++)
    {
        x[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
}

function coroutine(f)
{
    var o = f(); // instantiate the coroutine
    o.next(); // execute until the first yield
    return function (x)
    {
        o.next(x);
    }
}

function StartClock(clockName)
{
    var clock = coroutine(function*()
    {
        while (true) {
            yield;
            document.getElementById(clockName).textContent = "Tick";
            //console.log('Tick!');
            yield;
            document.getElementById(clockName).textContent = "Tock";
            //console.log('Tock!');
        }
    });
    setInterval(clock, 1000);
    clock(); // prints 'Tick!'
    clock(); // prints 'Tock!'
    clock(); // prints 'Tick!'
}
//var Update = new CustomEvent('Update');
//elem
//var Update = document.createEvent('Update');
function StartUpdateLoop()
{
    var counter = 1;
    var clock = coroutine(function *()
    {
        while (true)
        {
            yield;
            //console.log("help");
            document.getElementById('Clock').textContent = counter.toString();
            document.getElementById('Clock').style.marginLeft = (2*counter).toString() + "px";
            counter += 1;
        }
    });
    setInterval(clock, 10);
    clock();
}
