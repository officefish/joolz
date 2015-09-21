package joolz.mvc.controller.cache 
{
	import com.demonsters.debugger.MonsterDebugger;
	import joolz.event.DataEvent;
	import joolz.mvc.service.FloxService;
	import org.robotlegs.mvcs.StarlingCommand;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class CacheCommand extends StarlingCommand 
	{
		[Inject]
		public var event:DataEvent;
		
		[Inject]
		public var service:FloxService;
		
		override public function execute():void 
		{
			MonsterDebugger.log ('CacheCommand::execute()');
			MonsterDebugger.log ('index:' + event.data.index);
			service.log('index:' + event.data.index);
		}
	
		
	}

}