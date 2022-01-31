<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToClubs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('clubs', function (Blueprint $table) {
            // $table->foreign('stadiums_id', 'stadiums_id_fk1')->references('id')->on('stadiums')->onUpdate('cascade')->onDelete('restrict');
            // $table->foreignId('stadiums_id', 'stadiums_id_fk1')->constrained('stadiums')->onUpdate('cascade')->onDelete('restrict');
        });

        Schema::enableForeignKeyConstraints();
    }

    /**
     * Reverse the migrations.
     * 
     * @return void
     */
    public function down()
    {
        Schema::table('clubs', function (Blueprint $table) {
            // $table->dropForeign('stadiums_id_fk1');

        });
    }
}
