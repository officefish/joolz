package joolz.mvc.view.mediator 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.event.MainViewEvent;
	import joolz.mvc.model.StateModel;
	import joolz.state.State;
	import org.robotlegs.mvcs.StarlingMediator;
	import joolz.event.DataEvent;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class MainMediator extends StarlingMediator 
	{
		
		[Inject]
		public var model:StateModel; 
		
		override public function onRegister():void 
		{
			addViewListener(MainViewEvent.INTRO_CLICK, selectIntro);
			addViewListener(MainViewEvent.COLLECT_DATA, collectData);
		}
		
		private function selectIntro (event:MainViewEvent) :void {
			model.state = State.INTRO;
			model.validate();
		}	
		
		private function collectData (event:MainViewEvent) :void {
			dispatch(new DataEvent(DataEvent.CACHE, event.cache));
		}
	}

}