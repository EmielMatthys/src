package  
{
	import net.flashpunk.Entity;
    import net.flashpunk.World;
    import net.flashpunk.FP;
    import net.flashpunk.utils.Input;
    import net.flashpunk.utils.Key;
    import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class gameOver extends World 
	{
		
		public function gameOver() 
		{
			var splashText:Text = new Text("GAME OVER",0,0,140,480);
            splashText.color = 0xFF0000;
            splashText.size = 32;
            var splashEntity:Entity = new Entity(0,0,splashText);
            splashEntity.x = (FP.width/2)-(splashText.width/2);
            splashEntity.y = (FP.height/2)-(splashText.height/8);
			splashEntity.layer = 0;
            add(splashEntity);
			var titleText:Text = new Text("Press [G] to Start");
            var textEntity:Entity = new Entity(0,0,titleText);
            textEntity.x = (FP.width/2)-(titleText.width/2);
            textEntity.y = (FP.height / 2) - (titleText.height / 2);
			textEntity.layer = 0;
            add(textEntity);
			/*Assets.EMITTER = new Explosion02;
			add(Assets.EMITTER);
			randomExplosions();
			*/
		}
		override public function update():void {
			if (Input.pressed(Key.G)) {
                FP.world=new World01();
            }
		}
		
	}

}