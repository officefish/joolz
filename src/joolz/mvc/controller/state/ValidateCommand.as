package joolz.mvc.controller.state 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.mvc.model.StateModel;
	import joolz.state.State;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class ValidateCommand extends StarlingCommand 
	{
		[Inject]
		public var model:StateModel;
		
		override public function execute():void 
		{
			MonsterDebugger.log ('ValidateCommand::execute()');
			var state:State = model.state;
			switch (state) {
				case State.INTRO: {
					gotoIntroView();
					break;
				}
				case State.MAIN: {
					gotoMainView();
					break;
				}
			}
		}
		
		private function gotoIntroView () :void {
			MonsterDebugger.log ('Show Intro View');
		}
		
		private function gotoMainView () :void {
			MonsterDebugger.log ('Show Main View');
		}
	}

}