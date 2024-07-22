autowatch = 1;
inlets = 1;
outlets = 3;

include('scalingfunctions.js');

var fadeintime = 1;
var fadeouttime = 1;
var showtime = 1;
var fps = 50;
var intervall = 20;

declareattribute('linecount', null, 'setLineCount',0);
var linecount = 5;
var cycle;
var startfadeout;

function setTimes(a,b,c) {

    cycle = a + b + c;
    startfadeout = cycle - c;

    fadeintime = a;
    showtime = b;
    fadeouttime = c;
}



cycle = fadeintime + showtime + fadeouttime;
fadeouttime = cycle - fadeouttime;

var result = new Array();
var timer = new Array();
var count = new Array();
var id = new Array();
var content = new Array();

function setcontent(id, x) {
    content[id] = x;
    
}

function setLineCount(i) {
    linecount = i;
   
    makeCounter(linecount);
    
}

function makeCounter(x) {

    var i;

    for (i=0;i<x;i++) {
        timer[i] = new Task(fadeline,this,i);
        timer[i].interval = 20;

        count[i] = 0;
        id[i] = i;
        post(timer[i].interval, cycle)
    }

}


function fadeline(id) {

    
    timer[id].repeat(cycle);
    
    if (count[id] == cycle) {

        timer[id].cancel();
        count[id] = 0;
        
    } else {
        count[id] += 1;
    }



    if (count[id] < fadeintime) {
        result[id] = count[id];
        result[id] = normalize(result[id], 0., 1., 0, fadeintime)

    } else if (count[id] > startfadeout && count[id] <= cycle) {
        
        result[id] = count[id];
        result[id] = normalize(result[id], 1., 0., startfadeout, cycle);
        //result[id] = 1.0 - result[id];

    } else {
        result[id] = 1.0;
    }
    
    outlet(0, 'setText', id+1, content[id], result[id] );
    
}