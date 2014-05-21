//TODO: HP bar in 4 stages
package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Mask;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Fred Pannekoek
	 */
	public class HealthBar extends Entity 
	{
		private var _full:Image = new Image(Assets.HPFULL);
		private var _empty:Image = new Image(Assets.HPEMPTY);
		private var _hp1:Image = new Image(Assets.HPBAR1);
		private var _hp2:Image = new Image(Assets.HPBAR2);
		
		public function HealthBar() 
		{
		
			super(Entity01._x - 10, Entity01._y - 10, _full);
			
			
		}
		override public function update():void {
			super.update();
			x = Entity01._x - 10;
			y = Entity01._y - 10;
			if (Entity01.lives < Entity01.normalLive) {
				if (Entity01.lives < 10) { graphic = _empty; }
				else if (Entity01.lives > 9 && Entity01.lives < 30) { graphic = _hp1 }
				else if (Entity01.lives > 29 && Entity01.lives < 150) {graphic = _hp2 }
				else if (Entity01.lives > 149) { graphic = _full; }
				
			}
			//trace(Entity01.lives);
			
		}
		public function destroy():void
		{
			FP.world.recycle(this);
		}
	}

}