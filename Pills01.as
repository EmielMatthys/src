package  
{import net.flashpunk.Entity;
 import net.flashpunk.graphics.Image;
 import net.flashpunk.FP;
 import net.flashpunk.Sfx;
	/**
	 * ...
	 * @author Jeroen Stroobants
	 */
	public class Pills01 extends Entity
	{	private var image:Image;
		private var _x:Number = 460;
		private var _yRand:Number = 350;
		private var _yOffset:Number = 70;
		
		public function Pills01() 
		{
			x = FP.rand(_x);
			y = FP.rand(_yRand) + _yOffset;
			image = new Image(Assets.PILLS);
			graphic = image;
			super(x, y);
			setHitbox(18, 24);
			type = "Pills";
			}
			override public function update():void
			{
				if (collide("player", x, y))
				{
					x = FP.rand(_x);
					y = FP.rand(_yRand) + _yOffset;
					
				}
			}
			
		
	}

}