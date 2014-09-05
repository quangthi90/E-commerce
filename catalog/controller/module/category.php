<?php  
class ControllerModuleCategory extends Controller {
	protected function index($setting) {
		$this->language->load('module/category');

		$this->data['heading_title'] = $this->language->get('heading_title');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}

		/*$this->load->extract('catalog/category');

		$this->load->model('catalog/product');

		$this->data['categories'] = array();

		$categories = $this->extract_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category['category_id']));

			$children_data = array();

			$children = $this->extract_catalog_category->getCategories($category['category_id']);

			foreach ($children as $child) {
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);

				$product_total = $this->model_catalog_product->getTotalProducts($data);

				$total += $product_total;

				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
				);		
			}

			$this->data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);	
		}*/
		$this->load->extract('catalog/category');

		$this->data['categories'] = array();

		$categories = $this->extract_catalog_category->getCategories();

		//print("<pre>"); var_dump($categories); exit;

		print("<pre>"); var_dump($this->config->get('username')); exit;
		$level_max = $this->config->get('level_max');

		foreach ($categories as $category) {
			
			//$children_data = array();
			for ( $i = 1; $i <= $level_max; $i++ ){
				$find_id = 'div#menu_child_' . $i;
				$parent_id = 'menu_home_'.$category['category_id'];
				$children = $this->extract_catalog_category->getCategoriesChild($find_id,$parent_id);
			}
			print("<pre>"); var_dump($children); 
			
			foreach ($children as $child) {
				
				$find_id_2 = 'div#menu_child_2';

				$parent_id_2 = 'menu_home_'.$child['category_id'];

				$children_2 = $this->extract_catalog_category->getCategoriesChild($find_id_2,$parent_id_2);
				
				//print("<pre>"); var_dump($children_2);exit;

				/*foreach ($children_2 as $child_2) {
			
					//$parent_id_2 = 'menu_home_'.$child['category_id'];

					//$find_id = 'div#menu_child_2';
					
					//$children_2 = $this->extract_catalog_category->getCategoriesChild($find_id,$parent_id_2);
					
					$children_2_data[] = array(
						'category_id' => $child_2['category_id'],
						'name'        => $child_2['name'] ,
						//'children'    => $children_2_data,
						'href'        => $child_2['href']
					);		
				}
				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'] ,
					'children'    => $children_2_data,
					'href'        => $child['href']
				);	*/	
			} //exit;

			/*$this->data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'],
				'children'    => $children_data,
				'href'        => $category['href'],
			);*/
		}
		//exit;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category.tpl';
		} else {
			$this->template = 'ecommerce/template/module/category.tpl';
		}

		$this->render();
	}
}
?>