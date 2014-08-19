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
					$categories[] = array(
						'category_id' => $id->getAttribute('idata'),
						'name' => $id->first_child()->plaintext,
						'href' => $id->first_child()->getAttribute('href')
					);
				}
				
			}
			return $categories;
		}
		public function getCategoriesChild($parent_id){
			$html = file_get_html('http://www.vatgia.com/home/');
			$categoriesallchild = array();
			foreach($html->find('div#menu_child_1') as $element){
				$categorieschild = array();
				foreach ($element->find('ul') as $id) {
					$categorychild = array();
					if ($id->getAttribute('id') == $parent_id) {
						foreach ($id->find('li') as $child ) {
							$categorychild['category_id'] = $child->getAttribute('idata');
							$categorychild['name'] = $child->first_child()->plaintext;
							$categorychild['href'] = $child->first_child()->getAttribute('href');
							$categorieschild[] = array(
								'category_id' => $child->getAttribute('idata'),
								'name' => $child->first_child()->plaintext,
								'href' => $child->first_child()->getAttribute('href')
							);
						}
						
					}
					$categoriesallchild[] = $categorieschild;
				}
			}
			return $categoriesallchild;
		}
	}
?>