package  
{
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Fred Pannekoek
	 */
	public class EnemyBullet01 extends Bullet01 
	{
		private var _sprites:Spritemap;
		public function EnemyBullet01() 
		{
			_sprites = new Spritemap(Assets.BULLET, 29, 29);
			_sprites.add("idle", [0, 1, 2, 3], 16, true);
			_sprites.play("idle");
			graphic = _sprites;
			type = "EnemyBullet";
			setHitbox(29, 29);
			layer = 1;
		}
		override public function update():void 
		{
			super.update();
			
			
			if (collide("player", x, y)) 
				{
					sound(FP.choose(0, 1));
					destroy2();
				}
		}
		public function destroy2():void
			{
				FP.world.recycle(this);
			}
		
	}

}