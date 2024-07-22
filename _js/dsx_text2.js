autowatch = 1
inlets = 1
outlets = 2

var t = this.patcher;

function enable(i) {
    var obj_text = t.getnamed('gen_text');
    var obj_texture = t.getnamed('texturecapture');

    if (i == 0) {
        obj_text.message('enable', 0);
        obj_texture.message('enable', 0);
    } else {
        obj_text.message('enable', 1);
        obj_texture.message('enable', 1);
    }

}

function RenderToTexture(i) {
    var obj_text = t.getnamed('gen_text');
    var obj_texture = t.getnamed('texturecapture');

    var mode = i;
    var capname = obj_texture.getattr('name');

    if (mode == 0) {
        obj_text.message('automatic', 1);
        obj_text.message('capture', '');
        obj_texture.message('enable', 0);

    } else {
        obj_text.message('automatic', 0);
        obj_text.message('capture', capname);
        obj_texture.message('enable', 1);
    }
    

}