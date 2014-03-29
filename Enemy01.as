package  
{import net.flashpunk.Entity;
import net.flashpunk.graphics.Image; 
import net.flashpunk.FP;
	/**
	 * ...
	 * @author Jeroen Stroobants
	 */
	public class Enemy01 extends Entity
	{	private var killed:Boolean = false;
		private var shootdelay:Number;
		
		private var _image:Image;
		public function Enemy01() 
		{
			_image = new Image(Assets.TITAN)
			graphic = _image;
			super(500, 10);
			setHitbox(120, 260);
			type = "Enemy01";
			shootdelay = 0;
		}
		override public function update():void 
			{		
				if (shootdelay > 0) shootdelay -= FP.elapsed;
				else {
						var newBullet:EnemyBullet01 = FP.world.create(EnemyBullet01) as EnemyBullet01;
						newBullet.x = x - halfWidth;
						newBullet.y = 130;
						newBullet.setMovement(-FP.rand(800), FP.rand(608));
						FP.world.add(newBullet);
						shootdelay = 1 / 5;
					}	
			}
		
		}

}