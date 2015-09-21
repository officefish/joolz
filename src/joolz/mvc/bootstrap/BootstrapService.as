package joolz.mvc.bootstrap 
{
	import joolz.mvc.service.FloxService;
	import org.robotlegs.core.IInjector;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class BootstrapService 
	{
		
		public function BootstrapService(injector:IInjector)  
		{
			injector.mapSingleton(FloxService); 
		}
		
	}

}