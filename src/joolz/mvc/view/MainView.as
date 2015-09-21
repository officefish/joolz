package joolz.mvc.view 
{
	import feathers.controls.ButtonGroup;
	import feathers.data.ListCollection;
	import joolz.event.MainViewEvent;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class MainView extends Sprite 
	{
		
		private var group:ButtonGroup;
		private var stageWidth:int; 
		private var stageHeight:int;
		private var initFlag:Boolean = false;
		
		public function MainView() 
		{
			addEventListener (Event.ADDED_TO_STAGE, onAddedToStage); 
		}
		
		public function resize (stageWidth:int, stageHeight:int) :void {
			this.stageWidth = stageWidth;
			this.stageHeight = stageHeight;
		}
		
		private function onAddedToStage (event:Event) :void {
			if (!initFlag) {
				init ();
			}
		}
		
		private function init () :void {
						
			// menu items
			group = new ButtonGroup(); 
			group.customButtonStyleName = "mainButton";
			group.useHandCursor = true;
			this.addChild(group);
			
			group.direction = ButtonGroup.DIRECTION_VERTICAL;
			group.gap = 1; 
						
			group.dataProvider = new ListCollection( 
			[
				{ label: "INTRO VIEW", triggered:onIntroClick },
				{ label: "COLLECT DATA", triggered:onCollectDataClick },
			]);
			
			group.validate();
			
			group.x = (stageWidth - group.width >> 1);
			group.y = (stageHeight - group.height >> 1);
			
			initFlag = true;
		}
		
		private function onIntroClick (event:Event) :void {
			dispatchEvent(new MainViewEvent(MainViewEvent.INTRO_CLICK));
		}
		
		private function onCollectDataClick (event:Event) :void {
			var index:int = Math.round(Math.random() * 10);
			dispatchEvent(new MainViewEvent(MainViewEvent.COLLECT_DATA, {index:index}));
		}
		
		
	}

}