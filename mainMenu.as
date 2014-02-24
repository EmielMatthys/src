package 
{
    import net.flashpunk.Entity;
    import net.flashpunk.World;
    import net.flashpunk.FP;
    import net.flashpunk.utils.Input;
    import net.flashpunk.utils.Key;
    import net.flashpunk.graphics.Text;
    public class mainMenu extends World {
        public function mainMenu() {
			var counter:int = 0;
            var titleText:Text = new Text("Press [G] to Start");
            var textEntity:Entity = new Entity(0,0,titleText);
            textEntity.x = (FP.width/2)-(titleText.width/2);
            textEntity.y = (FP.height/2)-(titleText.height/2);
            add(textEntity);
            var splashText:Text = new Text("Pug's Live",0,0,140,480);
            splashText.color = 0x00ff00;
            splashText.size = 32;
            var splashEntity:Entity = new Entity(0,0,splashText);
            splashEntity.x = (FP.width/2)-(splashText.width/2);
            splashEntity.y = 100;
            add(splashEntity);
			Assets.EMITTER = new Explosion02;
			add(Assets.EMITTER);
			randomExplosions();
			
			
        }
		private function randomExplosions():void 
		{
			for (var i:int = 0; i < 100; i++ ) {
				Assets.EMITTER.explosion(FP.rand(600), FP.rand(600));
			}
		}
        override public function update():void {
            super.update()
			if (Input.pressed(Key.G)) {
                FP.world=new World01();
            }
			
        }
    }
}