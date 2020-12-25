<pre>
<?
use app\models\Users;
$res='';
$res=Users::find()->where('id=1')->all();
print_r ($res);

?>
</pre>