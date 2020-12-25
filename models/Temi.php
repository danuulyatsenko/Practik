<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "temi".
 *
 * @property int $id
 * @property string $name
 * @property int $id_sozd
 * @property int $id_stati
 * @property string $text
 * @property string $data
 *
 * @property Bans[] $bans
 * @property Com[] $coms
 * @property User $sozd
 * @property Stati $stati
 */
class Temi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'temi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'id_sozd', 'id_stati', 'text', 'data'], 'required'],
            [['id_sozd', 'id_stati'], 'integer'],
            [['text'], 'string'],
            [['data'], 'safe'],
            [['name'], 'string', 'max' => 255],
            [['id_sozd'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['id_sozd' => 'id']],
            [['id_stati'], 'exist', 'skipOnError' => true, 'targetClass' => Stati::className(), 'targetAttribute' => ['id_stati' => 'id']],
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
            'id_sozd' => 'Id Sozd',
            'id_stati' => 'Id Stati',
            'text' => 'Text',
            'data' => 'Data',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBans()
    {
        return $this->hasMany(Bans::className(), ['id_temi' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComs()
    {
        return $this->hasMany(Com::className(), ['id_temi' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSozd()
    {
        return $this->hasOne(User::className(), ['id' => 'id_sozd']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStati()
    {
        return $this->hasOne(Stati::className(), ['id' => 'id_stati']);
    }
}
