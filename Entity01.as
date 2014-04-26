//this is the player
//TODO: change game over into animation + splashtext + respawn
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
		public static var lives:Number = 60;
		public static var _x:int;
		public static var _y:int;
		private var alive:Boolean;
		public static const normalLive:Number = 60;//public accessible const "amount of life"
		
		public function Entity01() 
		{
			image = new Image (Assets.PLAYER);
			super(100, 70);
			setHitbox(32, 32, 0, 0);
			graphic = image;
			layer = 2;
			type = "player";
			alive = true;
		}
		
		override public function update():void 
		{ 
		updatecollision();
		_x = x;
		_y = y;
		//Verandert de snelheid, en zet snelheid naar 0 wanneer de knop wordt losgelaten
		if (alive) 
		{
			if (Input.check(Key.UP))  	{ ySpeed = -power;}
			if (Input.check(Key.DOWN)) 	{ ySpeed = power;}
			if (Input.check(Key.LEFT)) 	{ xSpeed = -power; image.flipped = true; }
			if (Input.check(Key.RIGHT)) { xSpeed = power; image.flipped = false; }
			if (Input.released(Key.RIGHT)) 	{xSpeed = 0;}
			if (Input.released(Key.UP))  	{ySpeed = 0;}
			if (Input.released(Key.DOWN)) 	{ySpeed = 0;}
			if (Input.released(Key.LEFT)) 	{xSpeed = 0;}
		
		}
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
			if (collide("Enemy01", x, y) || collide("death", x, y) || collide("EnemyBullet", x, y)){
				lives -= normalLive / 4;
				die();
			}
			 
		}
		private function deadBody(_xPos:int, _yPos:int ):void {
			
			
			
		}
		
		private function die():void {
			Assets.EMITTER.explosion(x, y);
			if (lives >60) {
				alive = false;
				deadBody(x, y);
				FP.world.recycle(this);
				Level01.theme_village.stop();
				FP.volume = 1;
				World01.gameOver.play();
				//FP.world = new gameOver();
				lives = 60;
			}
		}
		
	
	}

}