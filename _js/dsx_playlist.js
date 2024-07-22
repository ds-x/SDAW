autowatch = 1;
inlets = 1;
outlets = 3;

t = this.patcher;

var id;
declareattribute('id');

var editmode;
var row = new Array(6);
var settings;
var timings;
var playlist;
var editor;
var scenetab;
var id;
var seq_enable;


// Timer Function if Playlist is enabled and Timepoints are set
/*
function enable(i) {

    playlist = t.getnamed('playlist');
    scenetab = t.getnamed('scenetab');
    seq_enable = i;
    
    if (i == 1) {
        playlist.message('ignoreclick', 0);
        scenetab.message('ignoreclick', 0);
        
        // trigger first entry in list
        playlist.message('select', 1, 1);
        id = 1;
        

    } else {

        playlist.message('select', 1, 1);
        id = 1;
        playlist.message('ignoreclick', 1);
        scenetab.message('ignoreclick', 1);
    }
}
*/

function read(f)
{
    timings = t.getnamed('timings');
    editor = t.getnamed('editor');
    playlist = t.getnamed('playlist');
    
    var file = f;
    // extract Filename without extension 
    var filename = f.substr(0,f.lastIndexOf("."));


    
    // messages to pattrstorage
    outlet(2,'read', file);
    outlet(2,'getslotlist');
    outlet(2,'getslotnamelist');

    timings.message('read', filename+'_timings.txt');
    playlist.message('refer', 'timings');
    playlist.message('select', 1, 1);


}

// General Functions
// when we click on table entries, either in Edit Mode or Playmode
// last id is 1in the beginning. because we select first entry
// currentid can be id??? 

var lastid = 1;
var currentid;

function list()
{
    
    if (editmode == 1) {
        // playlist sends a list of 3 numbers (0 = column, 1= row, 2 = cellcontent)
        var cellcontent = arguments[2];
        var column = arguments[0];
        var row = arguments[1];

        editor.message('set', cellcontent);
        editor.message('select');

        if (column == 1) {
            outlet(2,'slotname', row, cellcontent);
        }
            

    } else {
        // playlist sends a list of 6 numbers (0 = column, 1= row, 2 = SceneNo = ID, 3 = SceneName, 4 = Category, 5 = Tag, 6 = Place )
        
       
        // current ID is set to current selection
        id = arguments[2];
        currentid = arguments[2];
        transtiontime = arguments[4];

        if (currentid >= 1) 
        {
            //var currentid = arguments[2];
            outlet(0, 'recall', lastid, currentid);
            outlet(1, 0.0);
            outlet(1, 1.0, transtiontime);
        }

        // after sending out scenechange, make last = current
        lastid = currentid;

    }

}



function ShowFile() {

    outlet(2,'storagewindow');

}

function mode(i) 
{

    playlist = t.getnamed('playlist');
    
    if (i == 1) {
        // edit mode is on
        editmode = 1;
        playlist.message('selmode', 1); 

    } else {
        // Edit mode is, we select rows and save files
        editmode = 0;
        playlist.message('selmode', 3);
        editor.message('clear');
        writeFiles();
    }

}


// Scene Editor

function NewRowAfter() 
{
    
    // filter to prevent add a scene if id == 0
    if (id >= 1) 
    {
        newsceneID = id + 1;
        timings.message('insert', newsceneID, '<name>', '<transition>','<timepoint>', '<comment>');
        timings.message('renumber');
        outlet(2,'insert', newsceneID);
        outlet(2,'getslotnamelist');
        outlet(2,'renumber');
        outlet(2,'getslotlist');
        writeFiles();
    }
}

function NewRowBefore() 
{
    // filter the problem to add a scene before ID = 1
    if (id > 1) 
    {
        timings.message('insert', id, '<name>', '<transition>','<timepoint>', '<comment>');
        timings.message('renumber');
        outlet(2,'insert', id);
        outlet(2,'getslotnamelist');
        outlet(2,'renumber');
        outlet(2,'getslotlist');
        writeFiles();
    }
    

}

function DeleteRow() 
{
    // filter the problem to delete INIT scene = ID 1

    if (id > 1) 
    {
        timings.message('remove', id);
        timings.message('renumber');
        outlet(2,'remove', id);
        outlet(2,'getslotnamelist');
        outlet(2,'renumber');
        outlet(2,'getslotlist');
        writeFiles();
    }

}

function SaveChanges() 
{
    outlet(2,'grab');
    outlet(2,'store', id);
    writeFiles();
    
}

function writeFiles() {
    outlet(2,'writeagain');
    timings.message('writeagain');
}

// init to load reqired files

function loadbang() {

   //read();

}