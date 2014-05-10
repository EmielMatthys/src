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
		
		
		public function Pills01() 
		{
			x = FP.rand(500);
			y = FP.rand(450-100) + 70;
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
					x = FP.rand(500);
					y = FP.rand(450-100) + 70;
					
				}
			}
			
		
	}

}