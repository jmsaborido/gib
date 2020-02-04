<?php

use yii\bootstrap4\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Juegos */

$this->title = 'Añadir Juegos a tu lista';
$this->params['breadcrumbs'][] = ['label' => 'Juegos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="juegos-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'totalG' => $totalG,
        'totalC' => $totalC,
    ]) ?>

</div>