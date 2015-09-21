package joolz.mvc.bootstrap 
{
	import joolz.mvc.view.Intro;
	import joolz.mvc.view.MainView;
	import org.robotlegs.core.IInjector;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class BootstrapClasses 
	{
		
		public function BootstrapClasses(injector:IInjector)  
		{
			injector.mapSingleton(Intro);
			injector.mapSingleton(MainView);
		}
	}

}