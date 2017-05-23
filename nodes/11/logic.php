<?php
header("Content-type: text/xml");

// build site map array of active nodes that exactly exists
$results = $db->query(
  'SELECT `node`.`node_id`, `node_alias`.`alias`,`node`.`change_freq`,`node`.`priority`
  FROM `node`
  LEFT JOIN `node_alias` ON `node`.`node_id` = `node_alias`.`node_id`
  LEFT JOIN `node_permission` ON `node`.`node_id` = `node_permission`.`node_id`
  WHERE `node_permission`.`state` = \'active\';'
);
$instance->render['sitemap'] = array();
foreach($results as $row){
  $file = 'nodes/'.$row['node_id'].'/view.mustache';
  if(!file_exists($file)){
    continue;
  }
  $instance->render['sitemap'][] = array(
    'loc' => $row['alias'],
    'lastmod' => date('c', filemtime($file)),
    'changefreq' => $row['change_freq'],
    'priority' => $row['priority']
  );
}
?>