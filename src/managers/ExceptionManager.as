package managers
{
	import mx.controls.Alert;

	public class ExceptionManager
	{
		public static function showAlert( exceptionType : String ) : void
		{
			switch( exceptionType )
			{
				case ExceptionType.NO_SONG :
					Alert.show( "노래 파일이 열려있지 않습니다." );
					break;
				
				case ExceptionType.NO_LRC :
					Alert.show( "가사 파일이 열려있지 않습니다." );
					break;
			}
		}
	}
}