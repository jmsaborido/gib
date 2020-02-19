<?php

use yii\db\Migration;

/**
 * Class m200203_200027_insert_usuarios
 */
class m200203_200027_insert_usuarios extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('usuarios', [
            'nombre' => 'josesabor',
            'password' => '$2y$13$IT4m7G6xRaN6M6AXWTfiZ.1m3/sV5ljpD64VWCPjX0vaOfGOaZvhG',
            'auth_key' => Yii::$app->security->generateRandomString(60),
            'telefono' => '123123123',
            'poblacion' => 'Sanlúcar',
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('usuarios', ['nombre' => 'josesabor']);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m200203_200027_insert_usuarios cannot be reverted.\n";

        return false;
    }
    */
}
