<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToManagers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('managers', function (Blueprint $table) {
            // $table->foreign('clubs_id', 'clubs_id_fk3')->references('id')->on('clubs')->onUpdate('cascade')->onDelete('restrict');
            // $table->foreignId('clubs_id', 'stadiums_id_fk3')->constrained('clubs')->onUpdate('cascade')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('managers', function (Blueprint $table) {
            // $table->dropForeign('clubs_id_fk3');
        });
    }
}
