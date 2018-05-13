class Thehappenings {

}

class Main {

  static public function main():Void {
	var i = 1;
	var quant:String = './chronicl.dt';
	var q2ant:String = './featuring.dt';
	var lumen:Array<String> = ['./openCV', 'https://github.com/opencv/opencv.git'];
	i = act_0(lumen[0], lumen[1] , i);

  	var kyno = '';
  	var chron = gitcoal(quant, kyno);
  	var strua = gitcoal(q2ant, kyno);
	i = act_1(chron, strua);

   }

   			static public function act_0(ground:String, pillar:String, ?upper:Int){
   				var command_n0 = ['install', 'hxcpp'];
   				var command_n1 = [];
   				var command_n01 = ["--git-dir="+ground+'/.git', "--work-tree="+ground,  'init'];
   				var command_n2 = ["--git-dir="+ground+'/.git', "--work-tree="+ground, 'clone', pillar];
   				var command_n3 = ["--git-dir="+ground+'/.git', "--work-tree="+ground,  'checkout', 'master'];
   				var command_n4 = ["--git-dir="+ground+'/.git', "--work-tree="+ground,  'pull', 'origin', 'master'];
   				var command_n5 = [];
   				if (!sys.FileSystem.exists(ground)){
   					sys.FileSystem.createDirectory(ground);
			   		upper = clientele('git', command_n2, upper);
   				} else {
			   		if ( !(sys.FileSystem.exists(ground+'/.git')) ) {
			   			upper = clientele('git', command_n2, upper);
			   		};
			   		
   				}

			   upper = clientele('git', command_n3, upper);
			   upper = clientele('git', command_n4, upper);
			   return upper;
   			}

		   static public function act_1(mist:Int, dome:Int, ?meteo:Int){
		   		var command_m5 = ['checkout', '-b', 'feature-$dome'];
			  	var command_m4 = ['add', '*'];
			  	var command_m3 = ['commit', '-am', 'Code still not generated for the $mist -th time'];
			  	var command_m2 = ['push', 'origin', 'feature-$dome'];
			  	var command_m1 = ['checkout', 'development'];
			  	var command_m0 = ['merge', 'feature-$dome'];
				var command_0 = ['status'];
			  	var command_1 = ['push', 'origin', 'development'];
				var command_2 = ['checkout', 'master'];
				var command_3 = ['merge', 'development'];
				var command_4 = ['push', 'origin', 'master'];
			  	clientele('git', command_m5);
				clientele('git', command_m4);
			  	clientele('git', command_m3);
			  	clientele('git', command_m2);
			  	clientele('git', command_m1);
			  	clientele('git', command_m0);
				clientele('git', command_0);
			  	clientele('git', command_1);
			  	clientele('git', command_2);
				clientele('git', command_0);
			  	clientele('git', command_1);
			  	clientele('git', command_2);
			  	clientele('git', command_3);
			  	clientele('git', command_4);
			  	return meteo;
			}

			static public function act_2() {

				var command_o1 = ['', ''];
				var command_o1 = ['', ''];
				var command_o1 = ['', ''];
				var command_o1 = ['', ''];
				var command_o1 = ['', ''];
				var command_o1 = ['', ''];
				
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
					  		sys.io.File.append('1');
					  	}
					  	return chr0n;
					} 

					static public function clientele(a:String, b:Array<String>, ?c:Int) {
							var process_4 = new sys.io.Process('$a', b);
							var commitHash_4 = process_4.stdout.readAll().toString();
							if (process_4.exitCode() != 0) {
							var message = process_4.stderr.readAll().toString();
							var pos = haxe.macro.Context.currentPos();
							trace("Warning: " + commitHash_4);
							haxe.macro.Context.error('Cannot execute process_$c ... $process_4' + message, pos);
							};
							trace("Warning: " + commitHash_4);
							if ( c > 0 ) c++;
							return c;
					}
	
}