package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Fred Pannekoek
	 */
	public class Bullet01 extends Entity
	{
	
		private var moveX:Number = 0
		private var moveY:Number = 0
		
			
			public function setMovement(_x:Number = 0, _y:Number = 0):void
			{
				moveX = _x;
				moveY = _y;
			}
			
			override public function update():void
			{
				x += moveX * FP.elapsed;
				y += moveY * FP.elapsed;
				if (x > FP.camera.x + FP.width + 25 || x < FP.camera.x - 25 || y < - 25 || y > FP.height + 25 || collide("player", x, y))
				{
					destroy();
				}
			}
			public function destroy():void
			{
			FP.world.recycle(this);
			}
			
		
	}


}