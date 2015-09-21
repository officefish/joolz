package joolz.mvc.service 
{
	import com.demonsters.debugger.MonsterDebugger;
	import com.gamua.flox.Flox;
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * ...
	 * @author inozemcev
	 */
	public class FloxService extends Actor 
	{
		
		public function FloxService() 
		{
			super();
		}
		
		public function initialize (id:String, key:String, version:String) :void {
			Flox.init(id, key, version);
		}
		
		public function log (value:String) :void {
			MonsterDebugger.log('FloxService.log()');
			Flox.logInfo(value);
			Flox.logWarning("Something fishy is going on!");
			Flox.logEvent("CollectData", { str: value });
		}
		
		
		
	}

}