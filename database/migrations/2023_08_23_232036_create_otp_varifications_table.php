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
        Schema::create('otp_varifications', function (Blueprint $table) {
            $table->id();
            $table->string('otp');
            $table->string('type');
            $table->string('username');
            $table->string('email');
            $table->string('password');
            $table->timestamp('expire_at');
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
        Schema::dropIfExists('otp_varifications');
    }
};
