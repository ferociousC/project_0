class Thehappenings {
	static public function gitcoal(axmd:String, bxmd:String) {
		bxmd = sys.io.File.getContent(axmd); 
	  	var chr0n = Std.parseInt(bxmd);
	  	if (bxmd != '' && chr0n != 0 ) {
	  	chr0n++;
		trace(chr0n);
		trace('well $chr0n');
	  	bxmd = Std.string(chr0n);
	  	sys.io.File.saveContent(axmd, bxmd);
	 	} else {
	  		chr0n = 1;
	  		sys.io.File.append ('1');
	  	}
	  	return chr0n;
	} 

	static public function clientele(addx:String, bddx:Array<String>) {
			
			var process_4 = new sys.io.Process(addx, bddx);
			if (process_4.exitCode() != 0) {
			var message = process_4.stderr.readAll().toString();
			var pos = haxe.macro.Context.currentPos();
			haxe.macro.Context.error("Cannot execute process_4 . " + message, pos);
			};
			var commitHash_4 = process_4.stdout.readAll();
			trace("Warning: " + commitHash_4);

	}
}


class Main {
  static public function main():Void {
	var quant:String = './chronicl.dt';
  	var i = 5;
  	var kyno = '';
  	var chron = Thehappenings.gitcoal(quant, kyno);



	

	var process_0 = new sys.io.Process('git', ['status']);
	if (process_0.exitCode() != 0) {
	  var message = process_0.stderr.readAll().toString();
	  var pos = haxe.macro.Context.currentPos();
	  haxe.macro.Context.error("Cannot execute process_0. " + message, pos);
	};
	var commitHash_0 = process_0.stdout.readAll();
	trace("Warning: " + commitHash_0);

   var process_2 = new sys.io.Process('git', ['add', '*']);
   var commitHash_2 = process_2.stdout.readAll();
   trace("Warning: " + commitHash_2);

	var process_3 = new sys.io.Process('git', ['commit', '-am', 'Starting Garbage $chron']);
	if (process_3.exitCode() != 0) {
	var message = process_3.stderr.readAll().toString();
	var pos = haxe.macro.Context.currentPos();
	haxe.macro.Context.error("Cannot execute process_3 . " + message, pos);
	};
	var commitHash_3 = process_3.stdout.readAll();
	trace("Warning: " + commitHash_3);

	var command_4 = new Array(); command_4.push('push'); command_4.push('origin'); command_4.push('master');
	Thehappenings.clientele('git', command_4);

   }
   	
}