package joolz.mvc.bootstrap 
{
	import joolz.mvc.view.Intro;
	import joolz.mvc.view.MainView;
	import joolz.mvc.view.mediator.IntroMediator;
	import joolz.mvc.view.mediator.MainMediator;
	import org.robotlegs.core.IStarlingMediatorMap;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class BootstrapView 
	{
		
		public function BootstrapView(mediatorMap:IStarlingMediatorMap)  
		{
			mediatorMap.mapView(Intro, IntroMediator);
			mediatorMap.mapView(MainView, MainMediator);
		}
		
	}

}