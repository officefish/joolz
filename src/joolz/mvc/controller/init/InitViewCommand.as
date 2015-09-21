package joolz.mvc.controller.init 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.event.JoolzContextEvent;
	import joolz.theme.JoolzTheme;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class InitViewCommand extends StarlingCommand 
	{
		override public function execute():void 
		{
			MonsterDebugger.log("InitViewCommand::execute()"); 
			
			// init Main Theme
			new JoolzTheme();
			
			dispatch(new JoolzContextEvent(JoolzContextEvent.VIEW_INIT));  
		}	
	}

}