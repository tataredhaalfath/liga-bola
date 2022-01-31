<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToMatches extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('matches', function (Blueprint $table) {
            // $table->foreign('clubs_id', 'clubs_id_fk4')->references('id')->on('clubs')->onUpdate('cascade')->onDelete('restrict');
            // $table->foreign('rivals_id', 'rivals_id_fk5')->references('id')->on('clubs')->onUpdate('cascade')->onDelete('restrict');
            // $table->foreignId('clubs_id', 'stadiums_id_fk4')->constrained('clubs')->onUpdate('cascade')->onDelete('restrict');
            // $table->foreignId('rivals_id', 'stadiums_id_fk5')->constrained('clubs')->onUpdate('cascade')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('matches', function (Blueprint $table) {
            // $table->dropForeign('clubs_id_fk4');
            // $table->dropForeign('rivals_id_fk5');
        });
    }
}
