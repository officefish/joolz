package joolz.mvc.controller.init 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.event.JoolzContextEvent;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class InitServiceCommand extends StarlingCommand 
	{
		override public function execute():void 
		{
			MonsterDebugger.log ("InitServiceCommand::execute()");
			dispatch(new JoolzContextEvent(JoolzContextEvent.SERVICE_INIT));  
		}	
	}

}