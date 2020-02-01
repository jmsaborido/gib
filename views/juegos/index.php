<?php

use yii\bootstrap4\Html;
use yii\grid\ActionColumn;
use yii\grid\GridView;

$this->title = 'Lista de Juegos';
$this->params['breadcrumbs'][] = $this->title;
?>

<!--     id bigserial PRIMARY KEY,
    Dia smallint,
    Mes smallint,
    year smallint,
    nombre varchar(100),
    Consola varchar(100),
    Pasado boolean,
    Genero varchar(100),
    year_Debut smallint -->

<div class="generos-index">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $juegosSearch,
        'columns' => [
            'id',
            'dia',
            'mes',
            [
                'attribute' => 'year',
                'label' => 'Año',
            ],
            'nombre',
            'consola',
            [
                'attribute' => 'pasado',
                'format' => 'boolean',
            ],
            'genero',
            [
                'attribute' => 'year_debut',
                'label' => 'Año debut',
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