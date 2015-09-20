package joolz.mvc.controller.init 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.mvc.model.StateModel;
	import joolz.state.State;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class InitCompleteCommand extends StarlingCommand 
	{
		
		[Inject]
		public var stateModel:StateModel;
		
		override public function execute():void 
		{
			MonsterDebugger.log('InitCompleteCommand::execute()');
			stateModel.state = State.INTRO;
			stateModel.validate();
		}
		
	}

}