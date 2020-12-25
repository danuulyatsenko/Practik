<?php 
use \yii\widgets\ActiveForm;
 ?>
     <div class="container mt-5">
          <div class="row">
              <div class="col-12 col-md-8 mx-auto">
                <div class="jumbotron jmb">
                   <div class="row text-center">
                      <div class="text-center col-12">
                        <h2>Вставьте код</h2>
                      </div>
                        <div class="text-center col-20">
                                    <?php
                                      $form = ActiveForm::begin(['class'=>'form-horizontal']);  
                                    ?>
                                          <textarea rows="100" cols="100" class="form-control" name="name" placeholder="plase your code here" aria-describedby="messageHelp" style="margin-top: 0px; margin-bottom: 0px; height: 335px;"><?= $_SESSION['name'];?></textarea>
                                    <div>
                                      <button type="submit" class="btn btn-secondary btn-lg">run</button>
                                    </div>

                                    <?php
                                      ActiveForm::end();

                                     ?> 
                             </form>
                         </div>
                     </div>
                 </div>
             </div>
           </div>
      </div>
<P>Результат:</P><br>
<?php
  exec("php -l ../views/site/codetest.php", $output, $result);
  if ($result == 0){
  echo "{$str} is valid";
  } else {
  echo "{$str} is not valid PHP code";
}
?>