<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "juegos".
 *
 * @property int|null $dia
 * @property int|null $mes
 * @property int|null $year
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
            [['dia', 'mes', 'year', 'year_debut'], 'default', 'value' => null],
            [['dia', 'mes', 'year', 'year_debut'], 'integer'],
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
            'dia' => 'Dia',
            'mes' => 'Mes',
            'year' => 'Año',
            'nombre' => 'Nombre',
            'consola' => 'Consola',
            'pasado' => 'Pasado',
            'genero' => 'Genero',
            'year_debut' => 'Año Debut',
        ];
    }

    public function getDischargedLabel()
    {
        return $this->discharged ? 'Si' : 'No';
    }
    // public function getJuegos()
    // {
    //     return $this->hasMany(Juegos::className(), ['genero_id' => 'id'])->inverseOf('juego');
    // }
}
