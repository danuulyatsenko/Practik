<pre>
<?
use app\models\Users;
$res='';
$res=Users::find()->where('id_group=1')->select(['username','id_group'])->all();
print_r ($res);

?>
</pre>