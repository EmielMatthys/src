//TODO: HP bar in 4 stages
package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Mask;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author Fred Pannekoek
	 */
	public class HealthBar extends Entity 
	{
		private var _full:Image = new Image(Assets.HPFULL);
		private var _empty:Image = new Image(Assets.HPEMPTY);
		public function HealthBar() 
		{
		
			super(Entity01._x - 10, Entity01._y - 10, _full);
			
		}
		override public function update():void {
			super.update();
			if (Input.check(Key.A)) { graphic = _empty; }
			if (Input.check(Key.Q)) { graphic = _full;}
			x = Entity01._x - 10;
			y = Entity01._y - 10;
			if (Entity01.lives < Entity01.normalLive) {
				if (Entity01.lives < 1) {
					graphic = _empty;
				}
				
			}else if (Entity01.lives >59) { graphic = _full;}
		}
		
	}

}