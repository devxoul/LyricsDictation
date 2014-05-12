package utils
{
	import spark.components.supportClasses.ItemRenderer;

	public function getMainApp( renderer : Object ) : LyricsDictation
	{
		if( renderer.parentDocument.parentDocument is LyricsDictation )
			return renderer.parentDocument.parentDocument as LyricsDictation;
		return renderer.parentDocument.parentDocument.parent as LyricsDictation;
	}
}