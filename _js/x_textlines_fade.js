autowatch = 1;
inlets = 1;
outlets = 3;

include('scalingfunctions.js');

declareattribute('fps', null, 'setFPS',0);
declareattribute('mode', null, 'setMode', 0);
declareattribute('linecount', null, 'setLineCount',0);
declareattribute('align', null, 'setalign', 0);
declareattribute('fontsize', null, 'setfontsize', 0);
declareattribute('color', null, 'setcolor', 0);
declareattribute('position', null, 'setposition',0);
declareattribute('font', null, 'setfont', 0);
declareattribute('distance', null, 'setdistance', 0);
declareattribute('enable',null,'setenable', 0);

var t = this.patcher;
var enable;
var fadeintime = 10;
var fadeouttime = 10;
var fps = 50;
var intervall = 20;
var linecount = 0;
var mode = 0;
var fontsize;
var align;
var color = [1,1,1,1];
var position = [0.0,0.0,0.0];
var linedistance = 0.1;
var font = 'Arial';


var textModules = new Array();
var brightness = new Array();
var timerIn = new Array();
var timerOut = new Array();
var count = new Array();
var id = new Array();
var content = new Array();
var tsk = new Array();

// TEXT FUNCTIONS

function setFades(fadein,fadeout) 
{
    setFPS(fps);
    fadeintime = Math.ceil(fadein * fps);
    fadeouttime = Math.ceil(fadeout * fps);
    //post(fadeintime, fadeouttime);
}

function setFPS(i) 
{
    fps = i;
    intervall = 1000 / fps;
    //post('\n', 'current speed is: ', fps, 'interval is :', intervall);
}



function setenable(x) {
    enable = x;
    if (linecount > 0) {
        
        for (var i=0;i<linecount;i++) {
            textModules[i].enable = x;
        }
    }
}

function setMode(mode) {
    return mode;
}

function setalign(align) {
    
    for (var i = 0; i<linecount;i++) {
        textModules[i].align = align;
    }   
}

function setdistance(distance) {

    linedistance = distance;
    for (var i = 0; i<linecount;i++) {
        textModules[i].position = [position[0], position[1] - i * linedistance,position[2]];
    }
}

function setfont(fontname) 
{
    font = fontname;

    if(linecount > 0) {
        for (var i = 0; i<linecount;i++) {
            textModules[i].font(fontname);
        }
    }   
}

function setcolor(r,g,b,a) 
{
    color = [r,g,b,a];

    if(linecount > 0) {
        for (var i = 0; i<linecount;i++) {
            textModules[i].color = color;
            post(textModules[i].color,'\n')
        }
    }   
}

function setfontsize(f) {
    f = normalize(f,0.,0.1,0.,1.);
    fontsize = [f,f,0.0];

    if(linecount > 0) {
        for (var i = 0; i<linecount;i++) {
            textModules[i].scale = fontsize;
        }
    }
}

function setposition(x,y,z) 
{
    position = [x,y,z];
    if(linecount > 0) {
        for (var i=0;i<linecount;i++) {
            textModules[i].position = [position[0], position[1] - i*linedistance, position[2]];
        }
    }   
}

function clearModules() {

    if (linecount > 0) {
        for (var i = 0; i<linecount;i++) {
            textModules[i].freepeer();
        }
    
    }
}

function setcontent(id, txt) 
{
    id = modulo(id);
    content[id] = txt;
    post('\n', 'content'+[id], 'is: ', content[id] );
}

function setLineCount(x) 
{
    clearModules();
    linecount = x;
    for (var i = 0; i<x;i++) {
       
        makeTextModules(i);
        
    }
}

function makeTextModules(i) {

    textModules[i] = new JitterObject('jit.gl.text', 'player'); 
    //textModules[i].text('TextModule', i);
    //textModules[i].text = content[i];
    textModules[i].mode = '3d';
    textModules[i].color = color;
    textModules[i].align = align;
    textModules[i].font(font);
    textModules[i].position = [position[0], position[1] - i * linedistance, 0.0];
    textModules[i].scale = fontsize;
    textModules[i].smooth_shading = 1;
    textModules[i].anti_alias = 1;
    textModules[i].blend_enable  = 1;
    textModules[i].blend = 'alphablend';
    textModules[i].depth_enable = 0;
    textModules[i].automatic = 1;
    textModules[i].layer  = 100;

    }

function modulo(x) {
    lc = linecount;
    var modx = x % linecount;
    post(modx);
    return modx;
}

function fadeline(id) {
    if (id == -1 ) {
        for (var i =0;i<linecount;i++) {
            mkfadeoutall(i);
        }
    } else {
        id = modulo(id);
    }
    
    if (textModules[id]) {
        // wenn brightness of text is grösser als 0.0
        if (textModules[id].color[3] == 0.0) {
            changeText(id);
            mkfadein(id);

        } else {
            // fadeout wenn zeile da ist
            mkfadeout(id);

        }
    } else {
        
    }
        
}


function mkfadein(id) {
    tsk[id] = new Task(fadein, this,id)
    tsk[id].interval = intervall
    tsk[id].repeat(fadeintime)
}

function mkfadeout(id) {
    tsk[id] = new Task(fadeout, this,id)
    tsk[id].interval = intervall
    tsk[id].repeat(fadeouttime)
}

function mkfadeoutall(id) {
    tsk[id] = new Task(fadeoutall, this,id)
    tsk[id].interval = intervall
    tsk[id].repeat(fadeouttime)
}

function fadein(id) {
    if (textModules[id]) {
        var c = arguments.callee.task.iterations;
        brightness[id] = normalize(c, 0., 1., 0, fadeintime);
        textModules[id].color = [color[0],color[1],color[2],color[3]*brightness[id]];
        //post('\n', 'br'+id, brightness[id]);
        //post(textModules[id].color[3]);
    }    
}

function fadeout(id) {
    if (textModules[id]) {
        var c = arguments.callee.task.iterations;
        brightness[id] = 1-(normalize(c, 0., 1., 0., fadeouttime));
        textModules[id].color = [color[0],color[1],color[2],color[3]*brightness[id]];

        if (textModules[id].color[3] == 0.0) {
            fadeline(id);
        }

        //post('\n', 'br'+id, brightness[id]);
        //post(textModules[id].color[3]);
    }
}

function fadeoutall(id) {
    if (textModules[id]) {
        var c = arguments.callee.task.iterations;
        brightness[id] = 1-(normalize(c, 0., 1., 0., fadeouttime));
        textModules[id].color = [color[0],color[1],color[2],color[3]*brightness[id]];
    }
}

function changeText(id) {
    textModules[id].text(content[id]);
}

function fadeoutBlock(id) {
    timerOut[id].repeat(fadeouttime);
    count[id] + 1;
    brightness[id] = normalize(count[id], 1., 0., fadeouttime, 0);
    textModules[id].color = [color[0],color[1],color[2],brightness[id]];
}