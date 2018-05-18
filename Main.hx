class Thehappenings {

}

class Main {

  static public function main():Void {
	
	var i = 1;
	var quant:String = './chronicl.dt';
	var q2ant:String = './featuring.dt';
	var lumen:Array<String> = ['./openCV', 'ssh://git@github.com/opencv/opencv.git'];
	var aeque:Array<String> = ['./llvm', 'ssh://git@github.com/ferociousC/project_0.git'];

	i = act_0(lumen[0], lumen[1], i);
	i = act_0(aeque[0], aeque[1], i);
  	var kyno = '';
  	var chron = gitcoal(quant, kyno);
  	var strua = gitcoal(q2ant, kyno);

	i = act_2(chron, strua);

   }

   			static public function act_0(ground:String, pillar:String, ?upper:Int){
   				var command_n0 = ['install', 'hxcpp'];
				var command_n00 = ['config', 'http.postBuffer', '1524288000'];
   				var command_n01 = ['',  'init'];
   				var command_n2 = ['clone', pillar, ground];
   				var command_n3 = ["--git-dir="+ground+"/.git", "--work-tree="+ground,  'checkout', 'master'];
   				var command_n4 = ["--git-dir="+ground+"/.git", "--work-tree="+ground,  'pull', 'origin', 'master'];
   				
   				if (!sys.FileSystem.exists(ground)) {
   					trace('Mark 1');
			   		upper = clientele('git', command_n2, upper);
   				};
				upper = clientele('git', command_n3, upper);
			   	upper = clientele('git', command_n4, upper);
			   return upper;
   			}

   			static public function act_1(bush:String, star:String, ?lower:Int){
   				var command_lx2 = ['clone', star, bush];
   				var command_lx3 = ["--git-dir="+bush, "--work-tree="+bush,  'checkout', 'master'];
   				var command_lx4 = ["--git-dir="+bush, "--work-tree="+bush,  'pull', 'origin', 'master'];
   				
   				if (!sys.FileSystem.exists(bush)) {
   					trace('Warning: Mark 2');
			   		lower = clientele('git', command_lx2, lower);
   				};
				lower = clientele('git', command_lx3, lower);
			   	lower = clientele('git', command_lx4, lower);
			   return lower;
   			}

		   static public function act_2(mist:Int, dome:Int, ?meteo:Int){
		   		trace('Warning: Mark 3');
		   		var command_m5 = ['checkout', '-b', 'feature-$dome'];
			  	var command_m4a = ['add', '*'];
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
				clientele('git', command_m4a);
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

			static public function act_3() {

				var command_o1 = ['', ''];
				var command_o2 = ['', ''];
				var command_o3 = ['', ''];
				var command_o4 = ['', ''];
				var command_o5 = ['', ''];
				var command_o6 = ['', ''];
				
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

					static public function clientele(arxm:String, ?bptl:Array<String>, ?cyrr:Int) {
							var process_4 = new sys.io.Process('$arxm', bptl);
							var commitHash_4 = process_4.stdout.readAll().toString();
							if (process_4.exitCode() != 0) {
							var message = process_4.stderr.readAll().toString();
							var pos = haxe.macro.Context.currentPos();
							haxe.macro.Context.error('Cannot execute process_$cyrr ... $process_4' + message, pos);
							};
							trace("Warning: " + commitHash_4);
							if ( cyrr > 0 ) cyrr++;
							return cyrr;
					}
	
}