<?php
	/**
	* 
	*/
	class ExtractCatalogCategory 
	{
		public function getCategories() {
			$html = file_get_html('http://www.vatgia.com/home/');
			$category = array();
			foreach($html->find('ul#menu_root') as $element){
				foreach ($element->find('li') as $id) {
					$category['category_id'] = $id->iddata;
					$category['name'] = $id->first_child()->plaintext;
					$category['href'] = $id->first_child()->href;
				}
			}
			return $category;
		}
		public function getCategoriesChild($parent_id = 0){
			$html = file_get_html('http://www.vatgia.com/home/');
			$categorychild = array();
			foreach($html->find('ul#menu_child_1') as $element){
				foreach ($element->find('ul li') as $id) {
					if ($id->parent()->iddata == $parent_id) {
						$categorychild['category_id'] = $id->iddata;
						$categorychild['name'] = $id->first_child()->plaintext;
						$categorychild['href'] = $id->first_child()->href;
					}
				}
			}
			return $categorychild;
		}
	}
?>