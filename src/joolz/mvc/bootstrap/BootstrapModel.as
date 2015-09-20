package joolz.mvc.bootstrap 
{
	import joolz.mvc.model.StateModel;
	import org.robotlegs.core.IInjector;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class BootstrapModel 
	{
		
		public function BootstrapModel(injector:IInjector)  
		{
			injector.mapSingleton(StateModel); 
		}
		
	}

}