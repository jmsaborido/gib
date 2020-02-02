<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Juegos */
/* @var $form ActiveForm */
?>
<div class="Juegos">

    <?php $form = ActiveForm::begin(); ?>


    <?= $form->field($model, 'pasado') ?>
    <?= $form->field($model, 'nombre') ?>
    <?= $form->field($model, 'consola.denom') ?>
    <?= $form->field($model, 'genero.denom') ?>
    <?= $form->field($model, 'year_debut') ?>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div><!-- Juegos -->