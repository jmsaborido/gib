<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Generos */
/* @var $form ActiveForm */
?>
<div class="Generos">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'denom') ?>
        <?= $form->field($model, 'created_at') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- Generos -->
