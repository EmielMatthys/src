package  
{
	import net.flashpunk.Entity;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class Assets
	{
		[Embed(source = 'assets/player.gif')] public static const PLAYER:Class;
		[Embed(source = 'assets/theme_forest.mp3')] public static const THEME_FOREST:Class;	
		[Embed(source = "assets/Tile06.png")] public static const TILEMAP:Class;
		[Embed(source = "assets/sprites.png")] public static const EXPLOSION:Class;
		
		public static var EMITTER:Explosion02;
		
	}

}