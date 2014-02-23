package  
{
	import flash.display.SimpleButton;
	import net.flashpunk.debug.Console;
	import net.flashpunk.World;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class World01 extends World
	{
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