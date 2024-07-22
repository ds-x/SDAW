autowatch = 1
inlets = 1
outlets = 2

var t = this.patcher;

function enable(i) {
    var obj_particle = t.getnamed('gen_particle');
    var obj_texture = t.getnamed('texturecapture');
    var obj_tfb = t.getnamed('tfb');

    if (i == 0) {
        obj_particle.message('enable', 0);
        obj_texture.message('enable', 0);
        obj_tfb.message('enable', 0);

    } else {
        obj_particle.message('enable', 1);
        obj_texture.message('enable', 1);
        obj_tfb.message('enable', 1);
    }

}

function RenderToTexture(i) {
    var obj_particle = t.getnamed('gen_particle');
    var obj_texture = t.getnamed('texturecapture');

    var mode = i;
    var capname = obj_texture.getattr('name');

    if (mode == 0) {
        obj_particle.message('automatic', 1);
        obj_particle.message('capture', '');
        obj_texture.message('enable', 0);

    } else {
        obj_particle.message('automatic', 0);
        obj_particle.message('capture', capname);
        obj_texture.message('enable', 1);
    }
    

}