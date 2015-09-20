package joolz.mvc.model 
{
	import joolz.event.JoolzContextEvent;
	import joolz.state.State;
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class StateModel extends Actor 
	{
		
		private var _state:State;
		
		public function set state (value:State) :void {
			_state = value;
		}
		public function get state () :State {
			return _state;
		}
		public function validate () :void {
			dispatch (new JoolzContextEvent(JoolzContextEvent.VALIDATE));
		}
		
		
		
	}

}