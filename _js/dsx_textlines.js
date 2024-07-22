autowatch = 1;
inlets = 1;
outlets = 1;

include('scalingfunctions.js');
var t = this.patcher;
var i;
var textModules = new Array();

var linecount = 0;
var fontsize;
var align;
var gl_context = 'wrld';
var color = [1,1,1,1];
var position = [0.0,0.0,0.0];
var linedistance = 0.1;
var font = 'Arial';
var enable;

declareattribute('gl_context', null, 'setcontext', 0);
declareattribute('align', null, 'setalign', 0);
declareattribute('linecount', null, 'setlines', 0);
declareattribute('fontsize', null, 'setfontsize', 0);
declareattribute('color', null, 'setcolor', 0);
declareattribute('position', null, 'setposition',0);
declareattribute('font', null, 'setfont', 0);
declareattribute('distance', null, 'setdistance', 0);
declareattribute('fadetime', null, 'setfadetime', 0);
declareattribute('enable',null,'setenable', 0);

function setlines(int) 
{
    
    clearModules();
    linecount = int;
    
    for (i = 1; i<=linecount;i++) {
        
        textModules[i] = new JitterObject('jit.gl.text', gl_context);
        
        textModules[i].text('TextModule', i);
        //textModules[i].position= [0.5, i * 0.05, 0.0];
        textModules[i].mode = '3d';
        textModules[i].color = color;
        textModules[i].align = align;
        textModules[i].font(font);
        textModules[i].position = [position[0], position[1] - i * linedistance, position[2]];
        textModules[i].scale = fontsize;
        textModules[i].smooth_shading = 1;
        textModules[i].anti_alias = 1;
        textModules[i].blend_enable  = 1;
        textModules[i].blend = 'alphablend';
        textModules[i].layer  = 100;

    }
}

function setenable(x) {
    enable = x;
    if (linecount > 0) {
        
        for (i=1;i<=linecount;i++) {
            textModules[i].enable = x;
        }
    }
}

function setfont(fontname) 
{
    
    font = fontname;
   

    if(linecount > 0) {
        for (i = 1; i<=linecount;i++) {
            textModules[i].font(fontname);
        }
    }   
}


function setcolor(r,g,b,a) 
{
    
    color = [r,g,b,a];

    if(linecount > 0) {
        for (i = 1; i<=linecount;i++) {
            textModules[i].color = color;
        }
    }   
}

function setposition(x,y,z) 
{
    position = [x,y,z];
    if(linecount > 0) {
        for (i=1;i<=linecount;i++) {
            
           
            textModules[i].position = [position[0], position[1] - i*linedistance, position[2]];
            
        }
    }   
}

function clearText() {
    for (i = 1; i<=linecount;i++) {
        textModules[i].text();
        
    }
}

function setfontsize(f) {
    f = normalize(f,0.,0.1,0.,1.);
    fontsize = [f,f,0.0];

    for (i = 1; i<=linecount;i++) {
        
        textModules[i].scale = fontsize;
    }
}

function setdistance(f) {

    linedistance = f;
    for (i = 1; i<=linecount;i++) {
        textModules[i].position = [position[0], position[1] - i * linedistance,position[2]];
    }
}

function setalign(int) {
    align = int;
    for (i = 1; i<=linecount;i++) {
        textModules[i].align = align;
    }   
}

function clearModules() {

    if (linecount > 0) {
        for (i = 1; i<=linecount;i++) {
            textModules[i].freepeer();
        }
    
    }
}

function setcontext(s) 
{
    gl_context = s;
    for (i=0;i<linecount;i++) {

        textModules[i].drawto = gl_context;
        post('GL Context is now: ', textModules[i].drawto);
    }
}

function getcontext() {
    var x = gl_context;
    return x;
}

function setText(id, content, fade) 
{
    if (linecount > 0) {
        textModules[id].text(content);
        textModules[id].color = [color[0],color[1],color[2],fade];
        //post(content);
    }

}











