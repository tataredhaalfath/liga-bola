<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();


        // $this->call([
        //     ManagersTableSeeder::class,
        //     MatchesTableSeeder::class,
        //     ClubsTableSeeder::class,
        //     PlayersTableSeeder::class,
        //     StadiumsTableSeeder::class
        // ]);

        $this->call(ManagersTableSeeder::class);
        $this->call(MatchesTableSeeder::class);
        $this->call(ClubsTableSeeder::class);
        $this->call(PlayersTableSeeder::class);
        $this->call(StadiumsTableSeeder::class);
    }
}
