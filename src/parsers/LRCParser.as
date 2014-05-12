package parsers
{
	import mx.collections.ArrayList;
	
	import utils.getFormattedTimeString;

	public class LRCParser
	{
		public function LRCParser()
		{
			
		}
		
		public static function parse( source : String ) : Array
		{
			var arr : Array = source.split( "\n" );
			var len : int = arr.length;
			var lrcs : Array = []
			for( var i : int = 0; i < len; i++ )
			{
				if( !arr[i].length ) continue;
				
				var lrc : LRC = new LRC;
				
				var minutes : String = arr[i].split( "[" )[1].split( "]" )[0].split( ":" )[0];
				if( minutes != "0" && minutes != "00" && !int( minutes ) ) continue;
				
				var seconds : String = arr[i].split( "[" )[1].split( "]" )[0].split( ":" )[1];
				if( Number( seconds ) < 0 ) continue;
				
				lrc.time = int( minutes ) * 60000 + Number( seconds ) * 1000;
				lrc.formattedTimeString = getFormattedTimeString( lrc.time );
				lrc.lyrics = arr[i].split( "]" )[1];
				
				if( !lrc.lyrics ) continue;
				
				trace( minutes + ":" + seconds, "(" + lrc.time + ")", lrc.lyrics );
				
				lrcs.push( lrc );
			}
			
			arr = null;
			
			return lrcs;
		}
		
		public static function make( lrcs : Array ) : String
		{
			var source : String = "";
			var len : int = lrcs.length;
			for( var i : int = 0; i < len; i++ )
			{
				var lrc : LRC = lrcs[i] as LRC;
				source += "[";
				if( lrc.time < 600000 ) source += "0";
				source += lrc.formattedTimeString + "]" + lrc.lyrics + "\n";
			}
			return source;
		}
	}
}