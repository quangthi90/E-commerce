<?php
	/*
	* @Author: Daisy
	* Input: none
	* Output: return array contain elements
	*/
	class ExtractModuleFeatured extends Extracter {
		protected function index()
		{
			//Create DOM Object
			$html = new simple_html_dom();

			//Load HTML from URL
			// $html->load_file('http://www.vatgia.com/home/');
			// $html = file_get_html($url);
			$html = file_get_html($'http://www.vatgia.com/home/');


			// Find all image
			foreach($html->find('ul#menu_root') as $element){
				foreach ($element->find('li a') as $a) {
					echo ($a->plaintext) . "<br>";
	}
}
		}
	}
?>