<?php

use yii\bootstrap4\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ConsolasSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Consolas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="consolas-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Consolas', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [

            'denom',
            'total',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>