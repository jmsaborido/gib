<?php

namespace app\models;

/**
 * This is the model class for table "juegos".
 *
 * @property date|null $fecha
 * @property string|null $nombre
 * @property string|null $consola
 * @property bool|null $pasado
 * @property string|null $genero
 * @property int|null $year_debut
 */
class Juegos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'juegos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['year_debut'], 'default', 'value' => null],
            [['year_debut'], 'integer'],
            [['pasado'], 'boolean'],
            [['nombre', 'consola', 'genero'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'fecha' => 'Fecha',
            'nombre' => 'Nombre',
            'consola' => 'Consola',
            'pasado' => 'Pasado',
            'genero' => 'Genero',
            'year_debut' => 'Año Debut',
        ];
    }
}
