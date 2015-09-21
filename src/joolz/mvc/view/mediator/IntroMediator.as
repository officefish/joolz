package joolz.mvc.view.mediator 
{
	import joolz.event.IntroEvent;
	import joolz.mvc.model.StateModel;
	import joolz.state.State;
	import org.robotlegs.mvcs.StarlingMediator;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class IntroMediator extends StarlingMediator 
	{
		[Inject]
		public var model:StateModel;
		
		override public function onRegister():void 
		{
			addViewListener(IntroEvent.MAIN_CLICK, selectMain);
		}
		
		private function selectMain (event:IntroEvent) :void {
			model.state = State.MAIN;
			model.validate();
		}
		
	}

}