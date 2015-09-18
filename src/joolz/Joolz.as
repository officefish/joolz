package joolz 
{
	import joolz.mvc.JoolzContext;
	import org.robotlegs.mvcs.StarlingContext;
	import starling.display.Sprite;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class Joolz extends Sprite 
	{
		private var context:StarlingContext; 
		
		public function Joolz() 
		{
			super();
			// configure starling context
			context = new JoolzContext(this);
		}
		
	}

}