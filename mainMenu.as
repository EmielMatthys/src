package 
{
    import net.flashpunk.Entity;
    import net.flashpunk.World;
    import net.flashpunk.FP;
    import net.flashpunk.utils.Input;
    import net.flashpunk.utils.Key;
    import net.flashpunk.graphics.Text;
    public class mainMenu extends World {
        private var normalText:Text = new Text("Press [1] for normal");
		private var hardText:Text = new Text("Press [2] for hard");
		public function mainMenu() {
			
			
			normalText.color = 0xFFFF33;
            var normalEntity:Entity = new Entity(0,0,normalText);
            normalEntity.x = (FP.width/2)-(normalText.width/2) - 100;
            normalEntity.y = (FP.height / 2) - (normalText.height / 2) - 100;
			normalEntity.layer = 0;
            add(normalEntity);
			
			
			hardText.color = 0xFFFFFF;
            var hardEntity:Entity = new Entity(0,0,hardText);
            hardEntity.x = (FP.width/2)-(hardText.width/2) + 100;
            hardEntity.y = (FP.height / 2) - (hardText.height / 2) - 100;
			hardEntity.layer = 0;
            add(hardEntity);
			
            var titleText:Text = new Text("Press [G] to Start");
            var textEntity:Entity = new Entity(0,0,titleText);
            textEntity.x = (FP.width/2)-(titleText.width/2);
            textEntity.y = (FP.height / 2) - (titleText.height / 2);
			textEntity.layer = 0;
            add(textEntity);
            var splashText:Text = new Text("Pug's Live",0,0,140,480);
            splashText.color = 0x00ff00;
            splashText.size = 32;
            var splashEntity:Entity = new Entity(0,0,splashText);
            splashEntity.x = (FP.width/2)-(splashText.width/2);
            splashEntity.y = 100;
			splashEntity.layer = 0;
            add(splashEntity);
			Assets.EMITTER = new Explosion02;
			add(Assets.EMITTER);
			//randomExplosions();
			
			
        }
		private function randomExplosions():void 
		{
			for (var i:int = 0; i < 1; i++ ) {
				Assets.EMITTER.explosion(FP.rand(600), FP.rand(600));
			}
		}
		private var counter:int = 0;
        override public function update():void {
            super.update()
			if (Input.pressed(Key.G)) {
                FP.world=new World01();
            }
			counter++;
			if (counter == 10) {
				randomExplosions();
				
				counter = 0;
			}
			if (Input.pressed(Key.DIGIT_1)) {
                normalText.color = 0xFFFF33;
				hardText.color = 0xFFFFFF;
				Enemy01.difficulty = 5;
            }
			if (Input.pressed(Key.DIGIT_2)) {
                normalText.color = 0xFFFFFF;
				hardText.color = 0xFFFF33;
				Enemy01.difficulty = 10;
            }
        }
    }
}