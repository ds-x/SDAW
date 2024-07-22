autowatch = 1;
inlets = 1;
outlets = 1;

var t = this.patcher;

include('scalingfunctions.js');

function oscin(target,value) {

    var scene = t.getnamed('scene');


    if (target == '/scene') {
        scene.setvalueof(value);
    }	

 

   
}