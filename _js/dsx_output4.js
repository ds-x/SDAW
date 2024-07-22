inlets = 1;
outlets = 2;

// -----------------------------------------------------
// setup communication points
var t = this.patcher;

var stereomode = new MaxobjListener(t.getnamed('stereomode'),changedim);
var fullscreen = new MaxobjListener(t.getnamed('fullscreen'),changedim);
var width = new MaxobjListener(t.getnamed('width'), changedim);
var height = new MaxobjListener(t.getnamed('height'), changedim);
var fps = t.getnamed('fps');

// -----------------------------------------------------
// global variables shared between patches

output = new Global('player');
output.screensize = [width.getvalue(),height.getvalue()];
output.stereomode = stereomode.getvalue();
output.fps = fps.getvalueof();

// -----------------------------------------------------
// Main Function to change dimensions

function changedim() {
	
	var world = t.getnamed('world');
	//var recorder = t.getnamed('recorder');
	var content = t.getnamed('content');
	
	var st = stereomode.getvalue();
	var fs = fullscreen.getvalue();
	var w = width.getvalue();
	var h = height.getvalue();
	
	//output.screensize = [w,h];
	
	if (fs == 0) {

		var dim = [w,h];
		var scale = [1.0, 1.0,0.0];
		
		world.message('fullscreen',0);
		world.message('size', dim);
		
		}
	
	else if (fs == 1) {
		
		world.message('fullscreen',1);
		
		var fullscreensize = world.getattr('size');
		var scale = [w/fullscreensize[0], h/fullscreensize[1],0.0];
		
		}
		
	
	//content.message('scale',scale);
	//recorder.message('dim',w,h);
	if (st > 3) {output.screensize = [w/1,h]} else {output.screensize = [w,h]};
	output.stereomode = st;	
	outlet(0,'updatesize');
	}
	
			
function loadbang() {
	stereomode = new MaxobjListener(t.getnamed('stereomode'),changedim);

	
	}
	
function getsize() {
	post(output.screensize);
	}