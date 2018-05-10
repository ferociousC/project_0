class Main {
  static public function main():Void {
	var process_0 = new sys.io.Process('git', ['status']);
	if (process_0.exitCode() != 0) {
	  var message = process_0.stderr.readAll().toString();
	  var pos = haxe.macro.Context.currentPos();
	  haxe.macro.Context.error("Cannot execute process_0. " + message, pos);
	}
	var commitHash_0:String = process_0.stdout.readLine();


   var process_1 = new sys.io.Process('git', ['checkout', 'development']);
   if (process_1.exitCode() != 0) {
	  var message = process_1.stderr.readAll().toString();
	  var pos = haxe.macro.Context.currentPos();
	  haxe.macro.Context.error("Cannot execute process_1. " + message, pos);
	}
	var commitHash_1:String = process_0.stdout.readLine();

   var process_2 = new sys.io.Process('git', ['add', '*']);
   if (process_2.exitCode() != 0) {
	  var message = process_2.stderr.readAll().toString();
	  var pos = haxe.macro.Context.currentPos();
	  haxe.macro.Context.error("Cannot execute process_2 . " + message, pos);
	}
	var commitHash_2:String = process_0.stdout.readLine();

	var process_3 = new sys.io.Process('git', ['commit', '-am', 'Starting Garbage 1']);
	if (process_3.exitCode() != 0) {
	var message = process_3.stderr.readAll().toString();
	var pos = haxe.macro.Context.currentPos();
	haxe.macro.Context.error("Cannot execute process_3 . " + message, pos);
	}
	var commitHash_3:String = process_0.stdout.readLine();

	var process_4 = new sys.io.Process('git', ['push', '-u', 'origin', 'development']);
		if (process_4.exitCode() != 0) {
		var message = process_4.stderr.readAll().toString();
		var pos = haxe.macro.Context.currentPos();
		haxe.macro.Context.error("Cannot execute process_4 . " + message, pos);
	}
	var commitHash_4:String = process_0.stdout.readLine();

	var fhout:String = commitHash_0 + commitHash_1 + commitHash_2 + commitHash_3 + commitHash_4;
     
   }
   	
}