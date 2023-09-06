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
        Schema::create('customer_sms_defaults', function (Blueprint $table) {
            $table->id();
            $table->foreignId('templete_id')->nullable();
            $table->string('subject');
            $table->text('message');
            $table->text('visit_link');
            $table->boolean('active_status')->default(1);
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
        Schema::dropIfExists('customer_sms_defaults');
    }
};
