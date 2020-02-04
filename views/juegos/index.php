<?php

use yii\bootstrap4\Html;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;

$this->title = 'Lista de Juegos';
// $this->params['breadcrumbs'][] = $this->title;
?>
<div class="generos-index">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $juegosSearch,
        'columns' => [
            [
                'attribute' => 'id',
                'label' => '#',
            ],
            [
                'attribute' => 'fecha',
                'format' => 'date',
            ],
            [
                'attribute' => 'nombre',
                'headerOptions' => ['style' => 'width:100%']
            ],
            [
                'attribute' => 'consola.denom',
                'label' => 'Consola',
                'filter' => $totalC,
            ],
            [
                'attribute' => 'pasado',
                'format' => 'boolean',
            ],
            [
                'attribute' => 'genero.denom',
                'label' => 'Genero',
                'filter' => $totalG,
            ],
            [
                'attribute' => 'year_debut',
            ],
            ['class' => ActionColumn::class],
        ],
    ]) ?>

    <div class="row">
        <div class="col">
            <?= Html::a(
                'Insertar',
                ['juegos/create'],
                ['class' => 'btn btn-sm btn-primary']
            ) ?>
        </div>
    </div>
</div>