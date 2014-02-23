package  
{
	import net.flashpunk.Engine;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class Main extends Engine
	{
		
		public function Main() 
		{
			super(608, 608, 60, false);
			FP.world = new World01;
			trace("Debugger started correctly");
			FP.console.enable();
			FP.volume = 0.5;
		}
		
	}

}