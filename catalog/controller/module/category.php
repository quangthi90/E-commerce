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

		$this->load->extract('catalog/category');

		$this->data['categories'] = array();

		$aRootMenus = $this->extract_catalog_category->getCategories(
			$this->config->get('menu')['root']['html'],
			$this->config->get('menu')['root']['children']
		);
		
		$this->data['categories'] = array();
		foreach ( $aRootMenus as $aRootMenu ) {
			$aLevel1Menus = $this->extract_catalog_category->getCategories(
				$this->config->get('menu')['child']['html'] . $aRootMenu['category_id'],
				$this->config->get('menu')['child']['children']
			);
			$children_data = array();
			foreach ( $aLevel1Menus as $aLevel1Menu ) {
				$children_data[] = array(
					'category_id' => $aRootMenu['category_id'],
					'name'        => $aRootMenu['name'] . ($this->config->get('config_product_count') ? ' (0)' : ''),
					'href'        => $this->url->link('product/category', 'path=' . $aRootMenu['category_id'] . '_' . $aLevel1Menu['category_id'])	
				);
			}
			$this->data['categories'][] = array(
				'category_id' => $aRootMenu['category_id'],
				'name'        => $aRootMenu['name'] . ($this->config->get('config_product_count') ? ' (0)' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $aRootMenu['category_id'])
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category.tpl';
		} else {
			$this->template = 'ecommerce/template/module/category.tpl';
		}

		$this->render();
	}
}
?>