autowatch = 1;
inlets = 1;
outlets = 3;

//var listener = new JitterListener('player', callbackfun);

//var enable = 1;
include('scalingfunctions.js');

output = new Global('player');
output.screensize;

// declare input attributes

var adapt = 1;
declareattribute('adapt');

var dim = [256, 256];
declareattribute('dim');

var scale = 1.0;
declareattribute('scale');

var position = [0.0,0.0];
declareattribute('position');

var mode = 0;
declareattribute('mode');
// init objects and states

var vp = new JitterObject('jit.gl.videoplane');
var otx = new JitterObject('jit.gl.texture');
var itx = new JitterObject('jit.gl.texture');

itx.drawto = 'player';
itx.automatic = 0;
itx.adapt = 1;

otx.drawto = 'player';
otx.adapt = 0;
otx.automatic = 0;

vp.drawto = 'player';
vp.transform_reset = 2;
vp.automatic = 0;


function scalarproduct(arr,scalar) 
{
	for(var i=0; i<arr.length; i++) {
		arr[i] *= scalar;
	}
	return arr;
}



// for modules with texture input
function jit_gl_texture(texture_in) 
{
	rendertexture(texture_in);    
}

function rendertexture(tx_in) 
{
 
	itx.texture = tx_in;
    itx.jit_gl_texture(tx_in);
    dim = itx.dim;
	var dimscale = [dim[0] / output.screensize[0],dim[1] / output.screensize[1]];
	var txscale = [1.0,1.0];

	if (mode == 0) 
	{
		txscale = scalarproduct([1.0,1.0],scale);
		otx.dim = output.screensize;

	} else if (mode == 1)
	{
		txscale = scalarproduct(dimscale,scale); 
		otx.dim = output.screensize;
		
	} else {
		txscale = scalarproduct([1.0,1.0],scale);
		otx.dim = dim;
	}


    vp.texture = itx.texture;
	vp.scale = txscale;
	vp.position = position;
	vp.capture = otx.name;

	

    vp.draw();
    
    outlet(0, 'jit_gl_texture', otx.name);
	outlet(1, 'set','Resolution Out: ', otx.dim[0], otx.dim[1]);
	outlet(2, 'dim', otx.dim[0], otx.dim[1]);
}

rendertexture.local = 1;


/*
function callbackfun(event) 
{
	if (enable == 1) 
	{
		if (event.eventname == ("draw") || event.eventname == ("swap")) 
			{
			renderscene();
			}
	}
}
*/
