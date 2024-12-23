autowatch = 1;
inlets = 1;
outlets = 5;
var t = this.patcher;

include('scalingfunctions.js');


function movieloaded() {
	var control  = t.getnamed('moviecontrol');
	var mov = t.getnamed('movie');
	var fps = mov.getattr('fps');
	var framecount = mov.getattr('framecount');
	var dim = mov.getattr('dim');
	var duration = mov.getattr('duration');
	var timescale = mov.getattr('timescale');
	
	if (duration > 0) {var ms = (duration / timescale) * 1000;}
	else { var ms = 1 } 
	
	control.setvalueof(0);
	outlet(1,'set','FPS: ', fps);
	outlet(2,'set','Size: ', dim);
	outlet(3,'set', framecount, ' Frames');
	outlet(4, ms);
	
	}
	
// clear old messages
function loadbang() {
	outlet(1,'set');
	outlet(2,'set');
	outlet(3,'set');
	outlet(4,'set');

	}

function enable(i) {
	var obj_mov = t.getnamed('movie');
	var obj_plane = t.getnamed('out_plane');
	var control  = t.getnamed('moviecontrol');

	if (i == 0) {
        control.message('0');
        obj_plane.message('enable', 0);
    } else {
        obj_plane.message('enable', 1);
    }

}


// -------------------------------------------------	
// Movie Control

var position;
var rate;

function RenderToTexture(i) {
    var obj_movie = t.getnamed('movie');
    var obj_plane = t.getnamed('out_plane');

    var mode = i;
   

    if (mode == 0) {
        obj_plane.message('enable', 1);

    } else {
        obj_plane.message('enable', 0);
    }
    

}

function state(x) {

	switch (x) {

		case 0:
			var movieposition = t.getnamed('movieposition');
			outlet(0, 'stop');
			outlet(0, 'rate', 0);
			outlet(0, 'position', movieposition.getvalueof());
			
		break;
		
		case 1:
			outlet(0, 'start');
			outlet(0, 'rate',rate);
		
		break;
		
		
		default:

		}
	
	}			

function scrub(s) {
	var moviecontrol = t.getnamed('moviecontrol');
	moviecontrol.message(0);
	}

function speed(s) {
	rate = s;
	outlet(0,'rate', rate);
	return rate;
	}



// -------------------------------------------------	
// implement Midi Control

function ctlin(ctlno, ctlvalue) {
	
	var movieposition = t.getnamed('movieposition');
	var moviespeed = t.getnamed('moviespeed');
	var moviecontrol = t.getnamed('moviecontrol');
	var positionx = t.getnamed('positionx');
	var positiony = t.getnamed('positiony');	
	
	var ccmovieposition = t.getnamed('ccmovieposition');
	var ccmoviespeed = t.getnamed('ccmoviespeed');
	var ccmoviestop = t.getnamed('ccmoviestop');	
	var ccmovieplay = t.getnamed('ccmovieplay');
	var ccpositionx = t.getnamed('ccpositionx');	
	var ccpositiony = t.getnamed('ccpositiony');	
	
	/* 
	if (ctlno == ccmovieposition.getvalueof()) {
		scaled = normalize(ctlvalue,0,1,0,127);
		movieposition.setvalueof(scaled);
	} */
	
	if (ctlno == ccmoviespeed.getvalueof()) {
		scaled = normalize(ctlvalue,0,3,0,127);
		moviespeed.setvalueof(scaled);
	}
	
	if (ctlno == ccmoviestop.getvalueof()) {
		moviecontrol.setvalueof(0);
	}
	
	if (ctlno == ccmovieplay.getvalueof()) {
		moviecontrol.setvalueof(1);
	}
	
	/* if (ctlno == ccpositionx.getvalueof()) {
		scaled = normalize(ctlvalue,-1,1,0,127);
		positionx.setvalueof(scaled);
	}

	if (ctlno == ccpositiony.getvalueof()) {
		scaled = normalize(ctlvalue,-1,1,0,127);
		positiony.setvalueof(scaled);
	} */
	
	}

	function oscin(target,value) {

		var status = t.getnamed('status');
		var moviespeed = t.getnamed('moviespeed');
		var moviecontrol = t.getnamed('moviecontrol');
		var volume = t.getnamed('volume');
		var brightness = t.getnamed('brightness');
		var contrast = t.getnamed('contrast');
		var saturation = t.getnamed('saturation');
		var fade = t.getnamed('fade');

		if (target == '/status') {
			status.setvalueof(value);
		}	

		if (target == '/moviespeed') {
			moviespeed.setvalueof(value);
		}

		if (target == '/moviecontrol') {
			moviecontrol.setvalueof(value);
		}

		if (target == '/volume') {
			volume.setvalueof(value);
		}
		if (target == '/brightness') {
			brightness.setvalueof(value);
		}
		if (target == '/contrast') {
			contrast.setvalueof(value);
		}
		if (target == '/saturation') {
			saturation.setvalueof(value);
		}
		if (target == '/fade') {
			fade.setvalueof(value);
		}
	}