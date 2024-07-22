autowatch = 1;
inlets = 1;
outlets = 1;

var t = this.patcher;

include('scalingfunctions.js');

function oscin(target,value) {

    var enable = t.getnamed('enable');
    var mod_rotation = t.getnamed('mod_rotation');
    var mod_yscale = t.getnamed('mod_yscale');

    if (target == '/enable') {
        enable.setvalueof(value);
    }	

    if (target == '/mod_rotation') {
        //currentline.setvalueof(Math.ceil(value));
        mod_rotation.setvalueof(value);
    }

    if (target == '/mod_yscale') {
        //currentline.setvalueof(Math.ceil(value));
        mod_yscale.setvalueof(value);
    }

   
}