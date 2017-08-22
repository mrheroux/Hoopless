<?php
// load mustache templates
require 'includes/Mustache/Autoloader.php';
Mustache_Autoloader::register();

// mustache functions (f)
$instance->f = array(
	// date, e.g. {{#f.date}}Y{{/f.date}}
	'date' => function($format) {
		return date($format);
	},
	'get_menu' => function($menu) {
		global $db;
		global $instance;
		$db->bind('menu',$menu);
		$results = $db->query('
			SELECT `menu_item`.`node_id` AS `id`,`menu_item`.`parent_id`,`menu_item`.`title`, `node_alias`.`alias` 
			FROM `menu` 
			LEFT JOIN `menu_item` ON `menu`.`menu_id` = `menu_item`.`menu_id` 
			LEFT JOIN `node_alias` ON `menu_item`.`node_id` = `node_alias`.`node_id` 
			WHERE `menu`.`title` = :menu 
			ORDER BY `menu_item`.`parent_id`,`menu_item`.`weight` DESC, `menu_item`.`title` ASC;
		');
		$instance->menu[$menu] = $instance->build_menu($instance->build_tree($results),0);
		return;
	},

	// permalinks, e.g. {{#f.link}}33&q=2&a=1&b=2&c=3#top{{/f.link}}
	'link' => function($string, Mustache_LambdaHelper $helper) {
		global $instance;
		// separate fragment identifier from remaining string
		if (($pos = strpos($string, '#')) !== FALSE) {
			list($string, $fragment_id) = explode('#',$string);
		}
		// split alias_id and remaining string
		list($alias_id, $string) = explode('&',$string,2);
		// split parameters from remaining string
		parse_str($string, $parameters);
		// make href identifier for caching
		$id = $alias_id.'?'.$parameters['q'];
		$address = '';
		// will have to add something spiffy to accomidate for no record_id but extra and visa versa
		if(array_key_exists($id, $instance->cache['href'])){
			// return cached need to build out remaining q
			return $instance->cache['href'][$id].'#'.$fragment_id;
			// make smarter this if makes no sense
		} else {
			// look up and cache
			global $db;
			$db->bind('alias_id',$alias_id);
			$row = $db->row('
				SELECT `node_id`,`alias` 
				FROM `node_alias` 
				WHERE `alias_id` = :alias_id 
				LIMIT 1;
			');
			$node_id = $row['node_id'];
			$alias = $row['alias'];
			// PAGE?q=2&sa=r123GFESFT
			if(isset($parameters['q'])){
				$parameters['q'] = $helper->render($parameters['q']);
				list(,,,$salt,$hash) = explode('$',crypt($node_id,'$6$rounds=5000$'.md5($parameters['q'].$instance->config['href_salt'].'$')));
				$sa = urlencode($salt.$hash);
				$instance->cache['href'][$id] = array(
					'alias' => $alias,
					'q' => $parameters['q'],
					'sa' => $sa,
				);
				$bool = false;
				$output = $alias;
				foreach($parameters as $key => $value){
					$output .= (($bool)?'&amp;':'?').$key.'='.$value;
					$bool = true;
				}
				$output .= '&amp;sa='.$sa.'#'.$fragment_id;
				return $output;
			} else {
				$instance->cache['href'][$id] = $alias;
				return $alias.$extra;
			}
		}
	}
);

$mustache_loader = array();

if($instance->page['current']['template']==NULL){

} else if($instance->page['current']['template']=='view'){
} else {
	$mustache_loader[] = new Mustache_Loader_FilesystemLoader('themes/'.$instance->website['theme'].'/templates');
	$mustache_loader[] = new Mustache_Loader_FilesystemLoader('themes/'.$instance->website['theme'].'/templates/partials');
}
if($instance->page['current']['node_id']==0){
	// do nothing
} else {
	$mustache_loader[] = new Mustache_Loader_FilesystemLoader('nodes/'.$instance->page['current']['node_id']);
}

$html_writer = new Mustache_Engine(array('loader'=> new Mustache_Loader_CascadingLoader($mustache_loader)));

?>