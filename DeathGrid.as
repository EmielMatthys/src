package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.Mask;
	import net.flashpunk.masks.Grid;
	
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class DeathGrid extends Entity 
	{
		private var _tilemap:Tilemap;
		private var _grid:Grid;
		public function DeathGrid() 
		{
			layer = 1;
			_grid = new Grid(608, 608, 32, 32, 0, 0);
			mask = _grid;
			_grid.setRect(5, 13, 4, 3, true);
			type = "death";
		}
		
	}

}