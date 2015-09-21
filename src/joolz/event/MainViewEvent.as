package joolz.event 
{
	import starling.events.Event;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class MainViewEvent extends Event 
	{
		
		public static const INTRO_CLICK:String = 'introClick';
		public static const COLLECT_DATA:String = 'collectData';
		
		public var cache:Object;
		
		public function MainViewEvent(type:String, cache:Object = null, bubbles:Boolean=false) 
		{
			this.cache = cache;
			super(type, bubbles);
		}
		
		
		
		public function clone():Event {
			return new MainViewEvent(type, cache, bubbles)
		}
		
		
	}

}