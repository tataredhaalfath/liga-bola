<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToPlayers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('players', function (Blueprint $table) {
            // $table->foreign('clubs_id', 'clubs_id_fk2')->references('id')->on('clubs')->onUpdate('cascade')->onDelete('restrict');
            // $table->foreignId('clubs_id', 'stadiums_id_fk2')->constrained('clubs')->onUpdate('cascade')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('players', function (Blueprint $table) {
            // $table->dropForeign('clubs_id_fk2');
        });
    }
}
