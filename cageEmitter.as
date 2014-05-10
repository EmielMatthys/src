package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.graphics.Emitter;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class cageEmitter extends Entity 
	{
		private var _emitter:Emitter;
		public function cageEmitter() 
		{
			_emitter = new Emitter(Assets.EXPLOSION, 39, 40);
			_emitter.newType("explosion", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
			_emitter.setMotion("explosion", 0, 0, 1, 360, 0, 1, null);
			_emitter.setAlpha("explosion", 1, 0.1);
			graphic = _emitter
			layer = 1;
			
		}
		
	}

}