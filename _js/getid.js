inlets = 1;
outlets= 3;

var category;
declareattribute('category');

function getid() {

	if(this.patcher.box){
		
		var maxname = this.patcher.box.varname;
		var id = "[0-9]+";
		
		var vregexp = new RegExp(id);
		
		var r = vregexp.exec(maxname);

		if (r) {
			// output match
			
			outlet( 0,'set', category + r[0] );
			outlet( 1, 'set',1,'/'+category + r[0] );
			} 
		
		else {
			outlet( 0,'set', category + 0 );
			outlet( 1, 'set',1,'/'+category + 0 );
			}
		}
}