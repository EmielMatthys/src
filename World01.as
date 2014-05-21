package  
{
	
	import flash.display.SimpleButton;
	import flash.media.Sound;
	import net.flashpunk.debug.Console;
	import net.flashpunk.Sfx;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;

	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class World01 extends World
	{
		public static var gameOver:Sfx = new Sfx(Assets.GAMEOVER);
		
		public static var _scoreInt:int = 0;
		private var _scoreString:String = _scoreInt.toString();
		private var scoreText:Text = new Text("Score: " + _scoreString);
		private var scoreEntity:Entity = new Entity(0, 0, scoreText);
		//private var _score:Score;
		public function World01() 
		{
			FP.volume = 0.1;
			add(new Entity01());
			add(new Level01());
			Assets.EMITTER = new Explosion02;
			add(Assets.EMITTER);
			//add(new DeathGrid());
			add(new Enemy01());
			//add(new HealthBar());
			add(new Pills01);
			//add(new healthBar2);
			
			
			
			
			
			//scoreText.color = 0xFF0000;
			scoreText.size = 32;
			
            scoreEntity.x = 40;
            scoreEntity.y = 450;
			scoreEntity.update();
			scoreEntity.layer = -1;
			add(scoreEntity);		
		
		}
		override public function update():void 
		{
			super.update();
			//trace(_scoreInt);
			_scoreString = _scoreInt.toString();
			scoreText.text = "Score: " + _scoreString;
			scoreEntity.update();
			if (Input.pressed(Key.ESCAPE)) 	{ Entity01.lives = 60; FP.world.removeAll(); FP.world = new mainMenu(); Level01.theme_OP.stop(); }
		}
		
		
	}

}