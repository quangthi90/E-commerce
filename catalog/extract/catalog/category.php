<?php
	/**
	* 
	*/
	class ExtractCatalogCategory 
	{
		public function getCategories() {
			$html = file_get_html('http://www.vatgia.com/home/');
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
		public function getCategoriesChild($find_id,$parent_id){
			$html = file_get_html('http://www.vatgia.com/home/');
			// array contain content of li tag
			$categorieschild = array();
			foreach($html->find($find_id) as $element){
				foreach ($element->find('ul') as $id) {
					//arrar contain content of a tag
					$categorychild = array();
					if ($id->getAttribute('id') == $parent_id) {
						foreach ($id->find('li') as $child ) {
							if(isset($child->idata))
							{
								$categorychild['category_id'] = $child->getAttribute('idata');
							}
							else{
								$categorychild['category_id']= null;
							}
							$categorychild['name'] = $child->first_child()->plaintext;
							$categorychild['href'] = $child->first_child()->getAttribute('href');
							$categorieschild[] = array(
								'category_id' => $child->getAttribute('idata'),
								'name' => $child->first_child()->plaintext,
								'href' => $child->first_child()->getAttribute('href')
							);
						}
						break;
					}
					else{
						continue;
					}
				}
			}
			return $categorieschild;
		}
	}
?>