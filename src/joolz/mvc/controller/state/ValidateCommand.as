package joolz.mvc.controller.state 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.mvc.model.StateModel;
	import joolz.mvc.view.Intro;
	import joolz.mvc.view.MainView;
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
		
		[Inject]
		public var intro:Intro;
		
		[Inject]
		public var main:MainView;
		
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
			contextView.removeChildren();
			intro.resize(contextView.stage.stageWidth, contextView.stage.stageHeight);
			contextView.addChild(intro);
		}
		
		private function gotoMainView () :void {
			contextView.removeChildren();
			main.resize(contextView.stage.stageWidth, contextView.stage.stageHeight);
			contextView.addChild(main);
		}
	}

}