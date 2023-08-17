<?php

namespace Database\Seeders;

use App\Models\ModelWebsiteSetting;
use Illuminate\Database\Seeder;

class WebsiteSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'nama_website'              => 'E-Puskesmas',
            ]

        ];

        ModelWebsiteSetting::insert($data);
    }
}
