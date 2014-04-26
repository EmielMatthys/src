package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	
	/**
	 * ...
	 * @author Fred Pannekoek
	 */
	public class Bullet01 extends Entity
	{
	
		private var moveX:Number = 0
		private var moveY:Number = 0
		private var _song1:Sfx = new Sfx(Assets.SOUND1);
		private var _song2:Sfx = new Sfx(Assets.SOUND2);
		
			
			public function setMovement(_x:Number = 0, _y:Number = 0):void
			{
				moveX = _x;
				moveY = _y;
			}
			
			override public function update():void
			{
				x += moveX * FP.elapsed;
				y += moveY * FP.elapsed;
				if (x > FP.camera.x + FP.width + 25 || x < FP.camera.x - 25 || y < - 25 || y > FP.height + 25)
				{
					destroy();			
				}
				if (collide("player", x, y)) 
				{
					sound(FP.choose(0, 1));
					destroy();
				}
			}
			
			
			public function destroy():void
			{
				FP.world.recycle(this);
			}
			
			
			public function sound(_number:Number):void 
			{
				if (_number == 0) {
					_song1.play();
				} else if (_number == 1) {
					_song2.play();
				}else{}
				
			}
			
		
	}


}