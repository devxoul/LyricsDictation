package utils
{	
	import spark.components.List;
	import spark.components.supportClasses.ItemRenderer;

	/**
	 * List의 렌더러 중 index에 해당하는 렌더러를 반환한다.
	 */
	public function getListItemRenderer( list : List, index : int ) : ItemRenderer
	{
		return list.dataGroup.getElementAt( index ) as ItemRenderer;
	}
}