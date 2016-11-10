<?php
// instructions
echo '<div class="container instructions">Select a category.</div>';
echo '<div class="container background-white load-transition">';
echo '<div class="list-group">';
$db->bind('parent_id',$instance->page['current']['node_id']);
$results = $db->query('SELECT `node`.`title`, `node_alias`.`alias` FROM `node` LEFT JOIN `node_alias` ON `node`.`node_id` = `node_alias`.`node_id` LEFT JOIN `node_permission` ON `node`.`node_id` = `node_permission`.`node_id` WHERE `parent_id` = :parent_id AND `node_permission`.`state` = \'active\' ORDER BY `node`.`title` DESC');
foreach($results as $row){
	echo '<a class="list-group-item" href="'.$instance->href($row['alias']).'"><span class="glyphicon glyphicon-file" aria-hidden="true"></span> '.$row['title'].'</a>';
}
echo '</div>';
echo '</div>';
?>