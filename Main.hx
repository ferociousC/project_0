class Thehappenings {

}

class Main {

  static public function main():Void {
  	
	var quant:String = './chronicl.dt';
	var q2ant:String = './featuring.dt';
  	var i = 5;
  	var kyno = '';
  	var chron = gitcoal(quant, kyno);
  	var strua = gitcoal(q2ant, kyno);
	act_1(chron, strua);

   }

		   static public function act_1(mist:Int, dome:Int){
		   		var command_m2 = ['checkout', '-b', 'feature-$']; 
			  	var command_m1 = ['checkout', 'development'];
				var command_0 = ['status'];
			  	var command_1 = ['add', '*'];
			  	var command_2 = ['commit', '-am', 'Starting Garbage $mist'];
			  	var command_3 = ['push', 'origin', 'development'];
				var command_4 = ['checkout', 'master'];
				var command_5 = ['merge', 'development'];
				var command_6 = ['push', 'origin', 'master'];
			  	clientele('git', command_m1);
				clientele('git', command_0);
			  	clientele('git', command_1);
			  	clientele('git', command_2);
			  	clientele('git', command_3);
			  	clientele('git', command_4);
			  	clientele('git', command_5);
			  	clientele('git', command_6);
			}

					static public function gitcoal(jxmd:String, kxmd:String) {
						if (!sys.FileSystem.exists(jxmd)){
							sys.io.File.saveContent(jxmd, '1');
						}
						kxmd = sys.io.File.getContent(jxmd); 
					  	var chr0n = Std.parseInt(kxmd);
					  	if (kxmd != '' && chr0n != 0 ) {
					  	chr0n++;
						trace(chr0n);
						trace('well $chr0n');
					  	kxmd = Std.string(chr0n);
					  	sys.io.File.saveContent(jxmd, kxmd);
					 	} else {
					  		chr0n = 1;
					  		sys.io.File.append ('1');
					  	}
					  	return chr0n;
					} 

					static public function clientele(a:String, b:Array<String>) {
							var process_4 = new sys.io.Process('$a', b);
							if (process_4.exitCode() != 0) {
							var message = process_4.stderr.readAll().toString();
							var pos = haxe.macro.Context.currentPos();
							haxe.macro.Context.error("Cannot execute process_4 . " + message, pos);
							};
							var commitHash_4 = process_4.stdout.readAll().toString();
							trace("Warning: " + commitHash_4);
					}
	
}