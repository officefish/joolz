package joolz.mvc.view 
{
	import com.demonsters.debugger.MonsterDebugger;
	import feathers.controls.Button;
	import feathers.controls.ButtonGroup;
	import feathers.data.ListCollection;
	import joolz.event.IntroEvent;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class Intro extends Sprite 
	{
		private var group:ButtonGroup;
		private var stageWidth:int;
		private var stageHeight:int;
		private var initFlag:Boolean = false;
		
		public function Intro() 
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
				{ label: "MAIN VIEW", triggered:onMainClick },
			]);
			
			group.validate();
			
			group.x = (stageWidth - group.width >> 1);
			group.y = (stageHeight - group.height >> 1);
			
			initFlag = true;
		}
		
		private function onMainClick (event:Event) :void {
			dispatchEvent(new IntroEvent(IntroEvent.MAIN_CLICK));
		}
		
	}

}