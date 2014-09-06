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
			$this->data['categories'][] = array(
				'category_id' => $aRootMenu['category_id'],
				'name'        => $aRootMenu['name'] . ($this->config->get('config_product_count') ? ' (0)' : ''),
				'children'    => $this->getChildrenCategories( $aRootMenu, $this->config->get('menu')['level_max'] ),
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

	private function getChildrenCategories( $aMenu = array(), $iLevelChildMax = 0 ) {
		if ( $iLevelChildMax == 0 ) return array();
		$iLevelChildMax--;
		$aMenus = array();
		$aChildrenMenus = $this->extract_catalog_category->getCategories(
			$this->config->get('menu')['child']['html'] . $aMenu['category_id'],
			$this->config->get('menu')['child']['children']
		);
		if ( count($aChildrenMenus) == 0 ) return array();
		foreach ( $aChildrenMenus as $aChildrenMenu ) {
			$aMenus[] = array(
				'category_id' => $aChildrenMenu['category_id'],
				'name'        => $aChildrenMenu['name'] . ($this->config->get('config_product_count') ? ' (0)' : ''),
				'href'        => $this->url->link('product/category', 'path=' . $aMenu['category_id'] . '_' . $aChildrenMenu['category_id']),
				'children' 	  => $this->getChildrenCategories( $aChildrenMenu,  $iLevelChildMax )
			);
		}
		return $aMenus;
	}
}
?>