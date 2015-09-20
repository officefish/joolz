package joolz.event 
{
	/**
	 * ...
	 * @author inozemcev
	 */
	public class JoolzContextEvent extends DataEvent 
	{
		public static const MODEL_INIT:String = 'laModelInit';
		public static const SERVICE_INIT:String = 'laServiceInit';
		public static const VIEW_INIT:String = 'laViewInit';
		public static const VALIDATE:String = 'validate';
		
		public function JoolzContextEvent(type:String, data:Object=null, bubbles:Boolean=false, cancelable:Boolean=false) 
		{
			super(type, data, bubbles, cancelable);
			
		}
		
	}

}