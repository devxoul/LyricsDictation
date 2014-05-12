package utils
{
	/**
	 * 밀리세컨드를 분:초로 바꿔준다.
	 */
	public function getFormattedTimeString( ms : int ) : String
	{
		var m : int = ms / 60000;
		var s : int = ( ms % 60000 ) / 1000;
		var x : int = ( ms % 1000 ) / 10;
		var ss : String = s < 10 ? "0" + s : String( s );
		var xs : String = x < 10 ? "0" + x : String( x );
		return m + ":" + ss + "." + xs;
	}
}