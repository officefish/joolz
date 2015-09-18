package joolz.mvc 
{
	import joolz.mvc.bootstrap.BootstrapView;
	import joolz.mvc.bootstrap.BootstrapClasses;
	import joolz.mvc.bootstrap.BootstrapController;
	import joolz.mvc.bootstrap.BootstrapModel;
	import joolz.mvc.bootstrap.BootstrapService;
	import joolz.mvc.bootstrap.BootstrapView;
	import org.robotlegs.mvcs.StarlingContext;
	import starling.display.DisplayObjectContainer;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class JoolzContext extends StarlingContext
	{
		
		public function JoolzContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true) 
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void 
		{
			bootstrap();
			super.startup();
		}
		
		private function bootstrap () :void {
			new BootstrapClasses(injector);
			new BootstrapModel(injector);
			new BootstrapController(commandMap);
			new BootstrapService(injector); 
			new BootstrapView(mediatorMap); 
		}
		
	}

}