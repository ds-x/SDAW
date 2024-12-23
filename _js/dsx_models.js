autowatch = 1;
inlets = 1;
outlets = 4;

include('scalingfunctions.js');
t = this.patcher;

// global count of models 
var maxcount = 0;

var materialname;
var context = 'player';
var path;
var animation_enable;
var animation_speed;
var mode;
var scale = [];


var position = [];
var range = [];
var randomvalues = [];

var enable;
var matrixout;
var lightenable;
var meshofs = [0.0,0.0,0.0];
var meshscale;
var meshEnable;

// ATTRIBUTES
declareattribute('context');
declareattribute('path');
declareattribute('animation_enable', null, 'setanimationenable');
declareattribute('materialname', null, 'setmaterial', 0);
declareattribute('mode', null, 'setmode', 0);
declareattribute('scale', null,'setscale', 0);

declareattribute('range', null, null, 0);
declareattribute('position', null, null, 0);
declareattribute('randomvalues', null, null,0);

declareattribute('enable', null, 'setenable',0);
declareattribute('meshofs', null, 'setmeshofs',0);
declareattribute('meshscale', null, 'setmeshscale',0);



// CREATE GL OBJECTS
var arrModels = new Array();
var meshModels = new Array();
var meshes = new Array();
var meshmatrix = new Array();
var i;



// FUNCTIONS
function setanimationenable(t) 
{
	for (i=0; i<maxcount;i++) {
    	arrModels[i].animenable(t);
        arrModels[i].animrate(animation_speed);
    	} 

    // set global variable
    animation_enable = t;
}

function setmaterial(id) 
{
	for (i=0; i<maxcount;i++) {
        arrModels[i].material = id;
        }
  	
	materialname = id;
}

function setscale(f) 
{

    var modelscale = [ f, f, f ];
    var newmeshscale = [ scale[0] + meshscale, scale[1] + meshscale, scale[2] + meshscale ];
   
   
   	for (i = 0; i < maxcount; i++) {
    	arrModels[i].scale = modelscale;
        meshes[i].scale = modelscale;
        }

    
    
scale = modelscale;

}

function anim_speed(f) 
{
   	if (animation_enable == 1) {
	
		for (i = 0; i < maxcount; i++) {
    		arrModels[i].animrate(f);        
    	}
	}
    animation_speed = f;
}

// ATTRIBUTES END

// MODEL Functions

function distributeX(range_x, id, maxcount, offset_x) 
{
    a = id / (maxcount - 1); // 0 - 1
    a = (a - 0.5) * 2.0; // -1 - 1 
    a += offset_x;
    a *= range_x;
    return a; // 

}

function distributeY(range_y, randval, offset_y) 
{
    a = randval * range_y;
    a += offset_y;
    return a;
}

function distributeZ(range_z, randval, offset_z) 
{
    a =  randval * range_z;
    a += offset_z;
    return a;
}

function distribute() {


        for (i=0;i<maxcount;i++) {
        
            arrModels[i].position = [   distributeX(range[0], i, maxcount, position[0]), 
                                        distributeY(range[1], randomvalues[i],position[1]), 
                                        distributeZ(range[2], randomvalues[i],position[2])
                                    ];
            
            
            meshes[i].position = [      distributeX(range[0], i, maxcount, position[0]), 
                                        distributeY(range[1], randomvalues[i],position[1]), 
                                        distributeZ(range[2], randomvalues[i],position[2])
                                    ];
        }


}


function rotate(x,y,z,animy) {

    var xrot = normalize(x,-180.0,180.0,0.0,1.0);
    var yrot = normalize(y,-180.0,180.0,0.0,1.0);
    var yani = normalize(animy, -180.0,180.0,0.0,1.0);
    var zrot = normalize(z,-180.0,180.0,0.0,1.0);

    var rotation = [xrot,yrot + yani,zrot];
    var randomrotation = [xrot, yrot + yani, zrot ];
    
	for (i=0;i<maxcount;i++) {
            
        
        arrModels[i].rotatexyz = randomrotation;
    
        meshes[i].rotatexyz = randomrotation;
        
    }

   

}

// SET STATUS OF ALL Objects

function setmode(x)
{
    for (i=0;i<maxcount;i++) {
        arrModels[i].automatic = x;
        }
}

function setenable(t) {

    for (i=0;i<maxcount;i++) {
        arrModels[i].enable = t;
    }
    enable = t;
}
    


function enableMatrixOutput(t) 
{
    matrixout = t;
   
}

function clearModels() {
    for (i = 0; i < maxcount; i++) {
        arrModels[i].freepeer();
        meshes[i].freepeer();
        //meshmatrix[i].freeper();
        //arrModels[i] = new JitterObject('jit.gl.model', context);
    }
}

var files = new Array();
var listener = new Array();


function loadModels() {
    
    clearModels();
    var filecount = loadModels.arguments.length;


    
    // upadate maxcount Variable
    maxcount = filecount;
    
    for (i = 0; i < filecount; i++) {

        //files[i] = loadModels.arguments[i].toString().toUpperCase();
        files[i] = path + loadModels.arguments[i].toString();
    
        arrModels[i] = new JitterObject('jit.gl.model', context);
        arrModels[i].dispose;
        arrModels[i].read(files[i]);
        arrModels[i].lighting_enable = 1;
        arrModels[i].normalize = 1;
        arrModels[i].automatic = 1;
        arrModels[i].smooth_shading = 1;
        arrModels[i].scale = scale;
        arrModels[i].position = position;
        arrModels[i].matrixoutput = 0;
        arrModels[i].material = materialname;
        arrModels[i].material_mode = 0;
        arrModels[i].gamma_correction = 0;

        meshes[i] = new JitterObject('jit.gl.mesh', context);
        meshes[i].dispose;
        meshes[i].enable = 0;
        meshes[i].automatic = 1;
        meshes[i].layer = 1;
        meshes[i].lighting_enable = 1;
        meshes[i].color = [1,1,1,1];
        
        meshes[i].material = materialname;
        meshes[i].material_mode = 1;
        meshes[i].transform_reset = 0;
        meshes[i].point_size = 2;
        meshes[i].smooth_shading = 1;
        meshes[i].draw_mode = 'line_loop';
        
        listener[i] = new JitterListener(arrModels[i].getregisteredname(), callbackfun);

    }
}

function enableMesh(t) {

    for (i=0;i<maxcount;i++) {
        arrModels[i].matrixoutput = t;
        meshes[i].enable = t;

    }

    meshEnable = t;
}

function draw_mode(x) {
    
    for (i=0;i<maxcount;i++) {

        switch (x) {
            case 0:
                meshes[i].draw_mode = 'points';
            break;
            case 1:
                meshes[i].draw_mode = 'line_loop';
            break;
            case 2:
                meshes[i].draw_mode = 'line_strip';
            break;
            case 3:
                meshes[i].draw_mode = 'triangles_adjacency';
            break;
            default:
        }
    }
}


// This Function is triggered from outside with the matrixnames as an array
// i should find a way to create an array inside JS from matrixnames...

var ids = new Array();

function createMeshes() {

    for (i=0;i<maxcount;i++) {
        ids[i] = createMeshes.arguments[i];
        //post(ids[i]);
        meshmatrix[i] = new JitterMatrix(ids[i]);
        meshes[i].jit_matrix(meshmatrix[i].name);
        meshes[i].scale = scale;
        //meshes[i].position = position;
    }
}

function callbackfun(event)
{ 
    var x = new Array();
    
    if (event.eventname == "matrixoutput") {
        // we filter the matrixnames and send them out
        // better would be to create an array from this without send them out in feed them in again....
        // but for now its fine
      
        var matrixnames = event.args[0];
       
        //makeArr(matrixnames);
        outlet(0,matrixnames);
        //post(matrixnames);
        } 

        
            //post(x);
            //createMeshes(x);   
        
}

callbackfun.local = 1;

function makeArr(elements) 
{
    var newArr = new Array();
    for (i=0;i<maxcount;i++) {

        newArr.push(elements);

    }
    
    post(newArr);      
} 





function dim(i) 
{
    var resolution = [i,i];
    outlet(0, 'dim', resolution);
}


function loadbang() {
    maxcount = 0;
}
