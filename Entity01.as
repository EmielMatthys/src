//this is the player
package  
{
	import flash.geom.Point;
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Mask;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class Entity01 extends Entity 
	{
		private var image:Image;
		private var xSpeed:Number=0;
        private var ySpeed:Number = 0;
		private var power:Number = 5;
		private var lives:Number = 60;
		
		public function Entity01() 
		{
			image = new Image (Assets.PLAYER);
			super(240, 300);
			setHitbox(32, 32, 0, 0);
			graphic = image;
			
		}
		
		override public function update():void 
		{ 
		updatecollision();
		//Verandert de snelheid, en zet snelheid naar 0 wanneer de knop wordt losgelaten
		if (Input.check(Key.UP))  	{ ySpeed = -power;}
		if (Input.check(Key.DOWN)) 	{ ySpeed = power;}
		if (Input.check(Key.LEFT)) 	{ xSpeed = -power; image.flipped = true; }
		if (Input.check(Key.RIGHT)) { xSpeed = power; image.flipped = false; }
		if (Input.released(Key.RIGHT)) 	{xSpeed = 0;}
		if (Input.released(Key.UP))  	{ySpeed = 0;}
		if (Input.released(Key.DOWN)) 	{ySpeed = 0;}
		if (Input.released(Key.LEFT)) 	{xSpeed = 0;}
		
		//limitatie van bewegingsvrijheid in het vlak
			if (x < 0) x = 0;
			if (x > FP.width - 32) x = FP.width - 32;
			if (y < 0) y = 0;
			if (y > FP.height - 32) y = FP.height - 32;	
		
		
		}
		
		private function updatecollision():void
		{
			//checkt de grootte van de snelheid en loopt de verplaatsing als het niet collide
			//zet sneheid naar 0 wanneer hij collide
			for (var i:int=0; i<Math.abs(xSpeed); i++) {
                if (! collide("level",x+FP.sign(xSpeed),y)) {
					x += FP.sign(xSpeed);
                } else {
                    xSpeed=0;
                    break;
                }
			}
				for (var j:int=0; j<Math.abs(ySpeed); j++) {
                if (! collide("level",x,y+FP.sign(ySpeed))) {
                    y+=FP.sign(ySpeed);
                } else {
                    ySpeed=0;
                    break;
                }
            }
			if (collide("enemy", x, y) || (collide("death", x, y))){
				lives -= 1;
				die();
			}
			 
		}
		//explosie + verwijdering van het vlak
		//TODO: muziekje + "GAME OVER"
		private function die():void {
			Assets.EMITTER.explosion(x, y);
			if (lives <1) {
				FP.world.recycle(this);
				Level01.theme_village.stop();
			}
		}
	
	}

}