package  
{
	import flash.display.SimpleButton;
	import flash.media.Sound;
	import net.flashpunk.debug.Console;
	import net.flashpunk.Sfx;
	import net.flashpunk.World;
	import net.flashpunk.FP;

	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class World01 extends World
	{
		public static var gameOver:Sfx = new Sfx(Assets.GAMEOVER);
		public function World01() 
		{
			add(new Entity01());
			add(new Level01());
			Assets.EMITTER = new Explosion02;
			add(Assets.EMITTER);
			add(new DeathGrid());
		}
		
	}

}