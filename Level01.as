package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	import net.flashpunk.Sfx;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class Level01 extends Entity
	{
		private var _tilemap:Tilemap;
		private var _grid:Grid;
		public static var theme_village:Sfx = new Sfx(Assets.THEME_FOREST);
		public function Level01() 
		{
			theme_village.loop();
			_tilemap = new Tilemap(Assets.TILEMAP, 608, 608, 32, 32);
			graphic = _tilemap;
			layer = 1;
			
			_tilemap.setRect(0, 0, 608 / 32, 608 / 32, 0); 
			_tilemap.setRect(0, 0, 608 / 32 , 1, 1);
			_tilemap.setRect(0, 608 / 32 -2, 608 / 32, 2, 1);
			_tilemap.setRect(0, 5, 2, 608 / 32 - 5, 1);
			_tilemap.setRect(0, 1, 3, 5, 4);
			_tilemap.setRect(5, 13, 4, 3, 5);
			_tilemap.setRect(4, 13, 1, 4, 2);
			_tilemap.setRect(5, 16, 4, 1, 2);
			
			_grid = new Grid(608, 608, 32, 32, 0, 0);
			mask = _grid;
			_grid.setRect(0, 0, 608 / 32 , 1, true);
			_grid.setRect(0, 608 / 32 -2, 608 / 32 , 2, true);
			_grid.setRect(0, 6, 2, 608 / 32 - 5, true);
			_grid.setRect(0, 1, 3, 5, true);
			type = "level";
			
		}
		
	}

}