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
			/*Assets.EMITTER = new Explosion02;
			add(Assets.EMITTER);
			randomExplosions();
			*/
		}
		
	}

}