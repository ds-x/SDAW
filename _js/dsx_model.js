autowatch = 1;
inlets = 1;
outlets = 4;

include('scalingfunctions.js');
t = this.patcher;

// gloabal count of models 
var maxcount = 0;

var materialname;
var context = 'player';
var path;
var animation_enable;
var animation_speed;
var mode;
var scale = [];
var randomvalue = Math.random() * 2.0 - 1.0; // 1 * 2 - 1
var position = [0.0,0.0,0.0];
var distance = [0.1,0.1,0.1];
var enable;
var matrix_enable;
var meshofs = [0.0,0.0,0.0];
var meshscale;

// ATTRIBUTES
declareattribute('context');
declareattribute('path');
declareattribute('animation_enable', null, 'setanimationenable');
declareattribute('materialname', null, 'setmaterial', 0);
declareattribute('mode', null, 'setmode', 0);
declareattribute('scale', null,'setscale', 0);
declareattribute('distance', null, 'setdistance', 0);
declareattribute('position', null, 'setposition', 0);
declareattribute('enable', null, 'setenable',0);
declareattribute('meshofs', null, 'setmeshofs',0);
declareattribute('meshscale', null, 'setmeshscale',0);



// CREATE GL OBJECTS
var newModel = new JitterObject('jit.gl.model', context);
var MatrixModel = new JitterObject('jit.gl.model', context);
var PartModel = new JitterObject('jit.gl.model', context);
var arrModels = new Array();

var i;

// FUNCTIONS
function setanimationenable(t) {
   
    if (mode == 0) 
    {
        newModel.animenable(t);
        newModel.animrate(animation_speed);
        MatrixModel.animenable(t);
        MatrixModel.animrate(animation_speed);

    } else if (mode == 1) 
    {
        for (i=0; i<maxcount;i++) {
            arrModels[i].animenable(t);
            arrModels[i].animrate(animation_speed);
        }
    } else {}

    // set global variable
    animation_enable = t;
}

function setmaterial(id) {
    
    if(mode == 0)
    {
        newModel.material = id;

    } else if (mode == 1) 
    {
        for (i=0; i<maxcount;i++) {
            arrModels[i].material = id;
        }
    } else {}
    
    materialname = id;
}

function setmeshscale(f) {

    
    var newmeshscale = [ scale[0] + meshscale, scale[1] + meshscale, scale[2] + meshscale ];
    if (mode == 0) {
        mesh.scale = newmeshscale;
    }
    meshscale = f;
}

function setscale(f) {
    var size = normalize(f,0.0,1.0,0.0,1.0);
    var modelscale = [ size, size, size ];
    var newmeshscale = [ scale[0] + meshscale, scale[1] + meshscale, scale[2] + meshscale ];
   
    if (mode == 0) 
    {
        newModel.scale = modelscale;
        mesh.scale = newmeshscale;
        PartModel.scale = modelscale;

    } else if (mode == 1) 
    {       
        for (i = 0; i < maxcount; i++) {
            arrModels[i].scale = modelscale;
            }
    } else {}

    scale = modelscale;

}

function anim_speed(f) {

    if (animation_enable == 1) 
    {
        if (mode == 0) 
        {
            newModel.animrate(f); 
            MatrixModel.animrate(f);

        } else if (mode == 1) 
        {
            for (i = 0; i < maxcount; i++) {
                arrModels[i].animrate(f);
                
            }
        } else {}
    }

    animation_speed = f;

}

// ATTRIBUTES END

// MODEL Functions

function setdistance(dx,dy,dz) {

    distance = [dx,dy,dz];
    if (mode == 1) {
        for (i=0;i<maxcount;i++) {
            arrModels[i].position = [position[0] + i * distance[0], position[1] + i * distance[1], position[2] + i * distance[2]];
        }
    }

}

function setmeshofs(xofs,yofs,zofs) {

    meshofs = [xofs,yofs,zofs];

    if (mode == 0) {
        var meshpos = [ position[0] + meshofs[0], position[1] + meshofs[1], position[2] + meshofs[2]];
        mesh.position = meshpos;
    }

}

function setposition(x,y,z) {

    // scale to -1 to 1
    var xpos = normalize(x,-1.0,1.0,0.0,1.0);
    var ypos = normalize(y,-1.0,1.0,0.0,1.0);
    var zpos = normalize(z,-1.0,1.0,0.0,1.0);

    position = [xpos,ypos,zpos];
    var meshpos = [ position[0] + meshofs[0], position[1] + meshofs[1], position[2] + meshofs[2]]

    var posmodel = [ xpos, ypos, zpos ];

    if (mode == 0) {
        newModel.position = position;
        PartModel.position = position;
        mesh.position = meshpos;
        
    } else if (mode == 1) {

        for (i=0;i<maxcount;i++) {
            arrModels[i].position = [ posmodel[0] + i * distance[0], posmodel[1] + i * distance[1], posmodel[2] + i * distance[2]];
        }
        
    } else {}

   
}

function rotate(x,y,z,animy) {

    var xrot = normalize(x,-180.0,180.0,0.0,1.0);
    var yrot = normalize(y,-180.0,180.0,0.0,1.0);
    var yani = normalize(animy, -180.0,180.0,0.0,1.0);
    var zrot = normalize(z,-180.0,180.0,0.0,1.0);

    var rotation = [xrot,yrot + yani,zrot];
    var randomrotation = [xrot, yrot + yani, zrot ];
    
    if (mode == 0) {
       
        newModel.rotatexyz = rotation;
        PartModel.rotatexyz = rotation;
        mesh.rotatexyz = rotation;

    } else if (mode == 1) {
       
        for (i=0;i<maxcount;i++) {
            
            arrModels[i].rotatexyz = randomrotation;
        }

    } else {}

}

// SET STATUS OF ALL Objects

function setmode(x)
{
    mode = x;
    newModel.automatic = 1-x;
    MatrixModel.automatic = 1-x;
    mesh.automatic = 1-x;

    if (matrix_enable == 1) {
        
    }
       
    for (i=0;i<maxcount;i++) {
        arrModels[i].automatic = x;
        }
    
}

function setenable(t) {

        // Module Status Function
        newModel.enable = t;
        MatrixModel.enable = t;
        mesh.enable = t;
    
        for (i=0;i<maxcount;i++) {
            arrModels[i].enable = t;
        }
        enable = t;
    }
    


function enableModel(x) {
    if (mode == 0) {
        newModel.automatic = x;
    }
    
}

function enableMesh(x) {
    if (mode == 0) {
        mesh.automatic = x == 0 ? 0 : 1;
    }
    
}

function enableMatrixOutput(x) {
    if (mode == 0) {
    if (x == 0) {
        PartModel.matrixoutput = 0;
        PartModel.enable = 0;

    } else {
        PartModel.matrixoutput = 2;
        PartModel.enable = 1;
    }

    matrix_enable = x;
}
}

function clearModel() {
    newModel.freepeer();
    MatrixModel.freepeer();
   
    //newModel = new JitterObject('jit.gl.model', context);
}

function clearModels() {
    for (i = 0; i < maxcount; i++) {
    arrModels[i].freepeer();
    //arrModels[i] = new JitterObject('jit.gl.model', context);
    }
}

function loadModels() {
    
    //clearModel();
    
    var filecount = loadModels.arguments.length;
    var files = new Array();
    
    // upadate maxcount Variable
    maxcount = filecount;
    
    for (i = 0; i < filecount; i++) {

        //files[i] = loadModels.arguments[i].toString().toUpperCase();
        files[i] = path + loadModels.arguments[i].toString();
    
        arrModels[i] = new JitterObject('jit.gl.model', context);
        //arrModels[i].dispose;
        arrModels[i].read(files[i]);
        arrModels[i].lighting_enable = 1;
        arrModels[i].normalize = 1;
        arrModels[i].smooth_shading = 1;
        arrModels[i].scale = scale;
        arrModels[i].position = [ position[0] + i * distance[0], position[1] + i * distance[1], position[2] + i * distance[2]];
        arrModels[i].material = materialname;
        arrModels[i].material_mode = 0;
    }
    
}

function loadModel(path) {
 
    // Clear ModelArray and set maxcount to 0
    //clearModels();
    maxcount = 0;

    newModel.normalize = 1;
    newModel.lighting_enable = 1;
    newModel.smooth_shading = 1;
    newModel.automatic = 1;
    newModel.scale = scale; 
    newModel.position = position;
    newModel.material = materialname;
    newModel.material_mode = 0; 
    newModel.read(path);
    newModel.layer = 3;
 
    // matrix for Mesh
    // always on
    MatrixModel.normalize = 1;
    MatrixModel.automatic = 1;
    MatrixModel.matrixoutput = 1;
    MatrixModel.read(path);

    // matrix for Particles
    PartModel.normalize = 1;
    PartModel.automatic = 1;
    PartModel.matrixoutput = matrix_enable;
    PartModel.read(path);
    PartModel.position = position;
    PartModel.scale = scale;
    //PartModel.rotatexyz = rotation;

}

// listens to the name of Mesh
// if it exists then start callbackfun function
var listener = new JitterListener(PartModel.name, callbackfun);
var listener = new JitterListener(MatrixModel.name, callbackfun2);



// MESH Functions
var mesh = new JitterObject('jit.gl.mesh', context);
mesh.enable = 1;
//mesh.jit_matrix(meshmatrix.name);
mesh.automatic = 1;
mesh.lighting_enable = 1;
mesh.blend_enable = 0;
//mesh.blend = 'alpha_add';
mesh.color = [1,1,1,1];
mesh.material = materialname;
mesh.layer = 4;
mesh.draw_mode = "line_loop";
mesh.transform_reset = 0;
mesh.point_size = 2;
mesh.scale = [ scale[0] + meshscale, scale[1] + meshscale, scale[2] + meshscale ];
mesh.position = [ position[0] + meshofs[0], position[1] + meshofs[1], position[2] + meshofs[2]];
//mesh.rotatexyz = 
mesh.smooth_shading = 1;


function callbackfun(event2)
{
	if (event2.eventname == "matrixoutput") {
		// create javascript matrix from matrixoutput event arg
		var modelmatrix = new JitterMatrix(event2.args[0]);
		// do something with gsmatrix
		//mesh.jit_matrix(modelmatrix.name);
        outlet(1, 'jit_matrix', modelmatrix.name);

	}
}

function callbackfun2(event)
{
	if (event.eventname == "matrixoutput") {
		// create javascript matrix from matrixoutput event arg
		var meshmatrix = new JitterMatrix(event.args[0]);
		// do something with gsmatrix
		mesh.jit_matrix(meshmatrix.name);
        //outlet(1, 'jit_matrix', modelmatrix.name);

	}
}

callbackfun.local = 1;
callbackfun2.local = 1;


function dim(i) 
{
    var resolution = [i,i];
    outlet(0, 'dim', resolution);
}


function loadbang() {
    maxcount = 0;
}

function draw_mode(x) {
    
    switch (x) {
        case 0:
            mesh.draw_mode = 'points';
        break;
        case 1:
            mesh.draw_mode = 'line_loop';
        break;
        case 2:
            mesh.draw_mode = 'line_strip';
        break;
        case 3:
            mesh.draw_mode = 'triangles_adjacency';
        break;
        default:
    }

}