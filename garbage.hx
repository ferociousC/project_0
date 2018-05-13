
   var process_1 = new sys.io.Process('git', ['checkout', 'development']);
   if (process_1.exitCode() != 0) {
	  var message = process_1.stderr.readAll().toString();
	  var pos = haxe.macro.Context.currentPos();
	  haxe.macro.Context.error("Cannot execute process_1. " + message, pos);
	};
	var commitHash_1:String = process_1.stdout.readLine();
	trace("Warning: " + commitHash_1);
	

				var btext:String = bddx.join(" ");
	command[4].push('git');



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

	var command_4 = ['push', 'origin', 'development'];
	Thehappenings.clientele('git', command_4);
   	




	/*		var process_4 = new sys.io.Process('$a', [for(v in b[key]) v.toString() + ' ']);
			if (process_4.exitCode() != 0) {
			var message = process_4.stderr.readAll().toString();
			var pos = haxe.macro.Context.currentPos();
			haxe.macro.Context.error("Cannot execute process_4 . " + message, pos);
			};
			var commitHash_4 = process_4.stdout.readAll();
			trace("Warning: " + commitHash_4);
	*/




	
				clientele('git', command_n01);
				clientele('git', command_n2);
				clientele('git', command_n3);
				clientele('git', command_n4);