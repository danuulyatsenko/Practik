<?
use app\models\Users;
use app\models\Group;
$res=Users::find()->all();
$grp=Group::find()->all();
$j=0;
echo '<table border="1">
			<tr>
				<th> username </th>
				<th> id_group </th>
			</tr>
			<tr>';
Foreach ($res as $key){
$j=$j+1;	
			echo '
				<td>'.$res[0]['username'].'</td> 
				<td>'.Group::find()->where("id = ".$res[$j]['id_group']->one).'</td> 
			</tr>
	   </table>';
}
?>