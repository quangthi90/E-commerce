<?php
	/**
	* 
	*/
	class ExtractCatalogCategory extends Extract
	{
		private $sHtml = '';
		private $config;

		public function __construct($registry){
			$this->config = $registry->get('config');
			$this->sHtml = file_get_html( $this->config->get('menu')['origin_link'] );
		}

		public function getCategories( $html, $children ) {
			$aMenuParents = $this->sHtml->find( $html );

			$aCategories = array();
			foreach ( $aMenuParents as $oMenuParent ) {
				$aMenuChildren = $oMenuParent->find( $children );
				foreach( $aMenuChildren as $oMenu ){
					$aCategories[] = array(
						'category_id' => $oMenu->getAttribute('idata') ? $oMenu->getAttribute('idata') : "",
						'name' => $oMenu->first_child()->plaintext,
						'href' => $oMenu->first_child()->getAttribute('href')
					);
					
				}
			}
			return $aCategories;
		}
	}
?>