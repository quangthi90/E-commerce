<?php
	/**
	* 
	*/
	class ExtractCatalogCategory 
	{
		public function getCategories() {
			$html = file_get_html('http://www.vatgia.com/home/');
			//$html = new simple_html_dom();
			//$html->load_file('http://www.vatgia.com/home/');
			$categories = array();
			foreach($html->find('ul#menu_root') as $element){
				$category = array();
				foreach ($element->find('li') as $id) {
					$category['category_id'] = $id->getAttribute('idata');
					$category['name'] = $id->first_child()->plaintext;
					$category['href'] = $id->first_child()->getAttribute('href');
				}
				$categories[] = $category;
			}
			return $categories;
		}
		public function getCategoriesChild($parent_id = 0){
			$html = file_get_html('http://www.vatgia.com/home/');
			$categorieschild = array();
			foreach($html->find('ul#menu_child_1') as $element){
				$categorychild = array();
				foreach ($element->find('ul li') as $id) {
					if ($id->parent()->getAttribute('idata') == $parent_id) {
						$categorychild['category_id'] = $id->getAttribute('idata');
						$categorychild['name'] = $id->first_child()->plaintext;
						$categorychild['href'] = $id->first_child()->getAttribute('href');
					}
				}
				$categorieschild[] = $categorychild;
			}
			return $categorieschild;
		}
	}
?>