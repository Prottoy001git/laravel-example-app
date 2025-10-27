<?php
namespace App\Models;
class Trainee
{
    public static $trainees = [
        [
            'id' => 1,
            'name' => 'Mina',
            'email' => 'mina@mail.com',
            'country' => 'BD',
            'is_active' => true
        ],
        [
            'id' => 2,
            'name' => 'Raju',
            'email' => 'raju@mail.com',
            'country' => 'IND',
            'is_active' => false
        ],
        [
            'id' => 3,
            'name' => 'Kamal',
            'email' => 'kamal@mail.com',
            'country' => 'PAK',
            'is_active' => true
        ]
    ];
    public static function all()
    {
        // return $this->trainees;
        // return Trainee::$trainees;
        return self::$trainees;
    }
    public static function findTrainee($id) {
        // return collect(self::$trainees)->firstwhere('id', $id);

        return collect(self::$trainees)->firstwhere('id', $id);
    }
}
?>