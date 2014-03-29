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
		[Embed(source = "assets/GameOver.mp3")] public static const GAMEOVER:Class;
		[Embed(source = "assets/TITAN.png")] public static const TITAN:Class;
		[Embed(source = "assets/bullet.png")] public static const BULLET:Class;
		[Embed(source = "assets/HealthBarFull.png")]public static const HPFULL:Class;
		[Embed(source = "assets/HealthBarEmpty.png")]public static const HPEMPTY:Class;
		
		public static var EMITTER:Explosion02;
		
	}

}