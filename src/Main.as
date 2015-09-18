package 
{
	import flash.display.Sprite;
	import flash.display.StageQuality;
	import flash.events.Event;
	import joolz.Joolz;
	import starling.core.Starling;
	
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	[SWF(frameRate = 60, width="450", height="800", backgroundColor="#0")]
	public class Main extends Sprite 
	{
		
		private var _starling:Starling;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
			
			_starling = new Starling(Joolz, stage);
			_starling.antiAliasing = 2; 
			stage.quality = StageQuality.HIGH; 
			_starling.start();
		}
		
	}
	
}