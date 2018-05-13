
   var process_1 = new sys.io.Process('git', ['checkout', 'development']);
   if (process_1.exitCode() != 0) {
	  var message = process_1.stderr.readAll().toString();
	  var pos = haxe.macro.Context.currentPos();
	  haxe.macro.Context.error("Cannot execute process_1. " + message, pos);
	};
	var commitHash_1:String = process_1.stdout.readLine();
	trace("Warning: " + commitHash_1);
	
	var process_4 = new sys.io.Process('git', ['push', '-u', 'origin', 'development']);
		if (process_4.exitCode() != 0) {
		var message = process_4.stderr.readAll().toString();
		var pos = haxe.macro.Context.currentPos();
		haxe.macro.Context.error("Cannot execute process_4 . " + message, pos);
	};
	var commitHash_4 = process_4.stdout.readAll();
	trace("Warning: " + commitHash_4);
