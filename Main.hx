class Main {
  static public function main():Void {
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

	var process_3 = new sys.io.Process('git', ['commit', '-am', 'Starting Garbage 2']);
	if (process_3.exitCode() != 0) {
	var message = process_3.stderr.readAll().toString();
	var pos = haxe.macro.Context.currentPos();
	haxe.macro.Context.error("Cannot execute process_3 . " + message, pos);
	};
	var commitHash_3 = process_3.stdout.readAll();
	trace("Warning: " + commitHash_3);

	var process_4 = new sys.io.Process('git', ['push', '-u', 'origin', 'development']);
		if (process_4.exitCode() != 0) {
		var message = process_4.stderr.readAll().toString();
		var pos = haxe.macro.Context.currentPos();
		haxe.macro.Context.error("Cannot execute process_4 . " + message, pos);
	};
	var commitHash_4 = process_4.stdout.readAll();
	trace("Warning: " + commitHash_4);

   }
   	
}