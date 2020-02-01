<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Juegos */
/* @var $form ActiveForm */
?>
<div class="Juegos">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'dia') ?>
        <?= $form->field($model, 'mes') ?>
        <?= $form->field($model, 'year') ?>
        <?= $form->field($model, 'year_debut') ?>
        <?= $form->field($model, 'pasado') ?>
        <?= $form->field($model, 'nombre') ?>
        <?= $form->field($model, 'consola') ?>
        <?= $form->field($model, 'genero') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- Juegos -->
