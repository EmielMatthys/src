package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Fred P.
	 */
	public class LevelDeath extends Entity 
	{
		private var _tilemap:Image;
		public function LevelDeath() 
		{
			
			_tilemap = new Image(Assets.DEATHWALL);
			graphic = _tilemap;
			
		}
		
	}

}