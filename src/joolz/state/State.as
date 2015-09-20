package joolz.state 
{
	import enumeration.UintEnumeration;
	/**
	 * ...
	 * @author inozemcev
	 */
	public class State extends UintEnumeration  {

		public static const INTRO:State                =  new State(0);
		public static const MAIN:State                 =  new State(1);
    
		public function State(value:uint) {
			super (value);
		}
	}


}