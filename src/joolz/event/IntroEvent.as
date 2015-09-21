package joolz.event 
{
	import starling.events.Event;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class IntroEvent extends Event 
	{
		
		public static const MAIN_CLICK:String = 'mainClick';
		
		public function IntroEvent(type:String, bubbles:Boolean=false) 
		{
			super(type, bubbles);
		}
		
		public function clone():Event {
			return new IntroEvent(type, bubbles)
		}
		
	}

}