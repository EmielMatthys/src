package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Emiel Matthys
	 */
	public class healthBar2 extends Entity
	{
		public static var hp:Number = Entity01.lives;
		private var _hpString:String = hp.toString();
		private var hpText:Text = new Text("HP: "+_hpString);
		
		public function healthBar2()
		{
			hpText.color = 0xFFFF33;
			hpText.size = 80;
			super(2, 2, hpText);
		}
		
		override public function update():void 
		{
			/*x = Entity01._x + 50;
			y = Entity01._y - 10;*/
			hp = Entity01.lives;
			_hpString = hp.toString();
			hpText.text = "HP: "+_hpString;
			graphic = hpText;
			super.update();
			if (hp < 50) { hpText.color = 0xFF0000 ; }
			if (hp > 50) { hpText.color = 0xFFFF33; }
			
		}
		public function destroy():void 
		{
			FP.world.remove(this);
		}
	}

}