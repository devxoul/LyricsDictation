package
{
	import spark.utils.DataItem;

	public class LRC extends DataItem
	{
		
		public var time : int;
		public var formattedTimeString : String;
		[Bindable] public var lyrics : String;
		
		public function LRC()
		{
			
		}
	}
}