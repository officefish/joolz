package joolz.mvc.bootstrap 
{
	import joolz.event.DataEvent;
	import joolz.event.JoolzContextEvent;
	import joolz.mvc.controller.cache.CacheCommand;
	import joolz.mvc.controller.init.InitCompleteCommand;
	import joolz.mvc.controller.init.InitModelCommand;
	import joolz.mvc.controller.init.InitServiceCommand;
	import joolz.mvc.controller.init.InitViewCommand;
	import joolz.mvc.controller.state.ValidateCommand;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.core.ICommandMap;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class BootstrapController 
	{
		
		public function BootstrapController(commandMap:ICommandMap)  
		{
			// -- Initialisation --
			/* All initialization realise in bootstrap classes but here we can configure some special things
			 * for example add some flashvars to model, configure service links, main theme, starling settings and so on 
			 */
			// init model
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitModelCommand, ContextEvent); 
			// init services
			commandMap.mapEvent(JoolzContextEvent.MODEL_INIT, InitServiceCommand, JoolzContextEvent); 
			// init view
			commandMap.mapEvent(JoolzContextEvent.SERVICE_INIT, InitViewCommand, JoolzContextEvent); 
			// initialize complete
			commandMap.mapEvent(JoolzContextEvent.VIEW_INIT, InitCompleteCommand);
			
			//-- Application State Machine -- 
			commandMap.mapEvent(JoolzContextEvent.VALIDATE, ValidateCommand);
			
			//-- Cache Data --
			commandMap.mapEvent(DataEvent.CACHE, CacheCommand, DataEvent);
			
			
		}
	}

}