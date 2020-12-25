<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "stati".
 *
 * @property int $id
 * @property string $name
 *
 * @property Temi[] $temis
 */
class Stati extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'stati';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTemis()
    {
        return $this->hasMany(Temi::className(), ['id_stati' => 'id']);
    }
}
