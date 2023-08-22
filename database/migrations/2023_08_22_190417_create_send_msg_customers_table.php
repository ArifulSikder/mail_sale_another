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
        Schema::create('send_msg_customers', function (Blueprint $table) {
            $table->id();
            $table->string('email');
            $table->string('templete_name');
            $table->string('subject');
            $table->longText('message');
            $table->text('visit_link');
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
        Schema::dropIfExists('send_msg_customers');
    }
};
