package joolz.mvc.controller.init 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.event.JoolzContextEvent;
	import joolz.mvc.service.FloxService;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class InitServiceCommand extends StarlingCommand 
	{
		[Inject]
		public var floxService:FloxService;
		
		override public function execute():void 
		{
			MonsterDebugger.log ("InitServiceCommand::execute()");
			
			floxService.initialize('WdpPOZwZx0YIJ8jV', 'dl84Yk9TRHzlRLUH', '0.7');
			
			dispatch(new JoolzContextEvent(JoolzContextEvent.SERVICE_INIT));  
		}	
	}

}