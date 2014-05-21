package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	/**
	 * ...
	 * @author Fred P.
	 */
	public class CageAnim extends Entity
	{public var sprCage: Spritemap = new Spritemap(Assets.CAGE, 608, 608);	
		
		public function CageAnim() 
		{
			sprCage.add("Cage", [0, 1, 2, 3], 4, false);
			graphic = sprCage
			super (0, 0);
			sprCage.play("Cage");
		}
		override public function update():void 
		{
			super.update();
			if (sprCage.complete)
			{
				if (Input.pressed(Key.G) || Input.pressed(Key.SPACE))
				{
					Level01.gabenSong.stop();
					FP.world.removeAll();
					FP.world = new World01();
					World01._scoreInt = 0;
				}
			}
		}
		
		
	}

}