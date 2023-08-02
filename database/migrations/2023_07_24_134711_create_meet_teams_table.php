<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meet_teams', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('designation');
            $table->longText('description');
            $table->string('active_status');
            $table->string('photo');
            $table->foreignId('created_by');
            $table->foreignId('updated_by')->nullable();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meet_teams');
    }
};
