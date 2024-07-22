autowatch = 1;
inlets = 1;
outlets = 1;

var t = this.patcher;

include('scalingfunctions.js');

function oscin(target,value) {

    var status = t.getnamed('status');
    var currentline = t.getnamed('currentline');
    

    if (target == '/status') {
        status.setvalueof(value);
    }	

    if (target == '/currentline') {
        //currentline.setvalueof(Math.ceil(value));
        currentline.setvalueof(Math.floor(value));
    }

   
}