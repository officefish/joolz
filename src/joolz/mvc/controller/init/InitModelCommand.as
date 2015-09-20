package joolz.mvc.controller.init 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.event.JoolzContextEvent;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class InitModelCommand extends StarlingCommand 
	{
		
		override public function execute():void 
		{
			MonsterDebugger.log ("InitModelCommand::execute()"); 
			dispatch(new JoolzContextEvent(JoolzContextEvent.MODEL_INIT));
		}
		
	}

}