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
        Schema::create('business_policies', function (Blueprint $table) {
            $table->id();
            $table->integer('policy_type');
            $table->longText('description');
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
        Schema::dropIfExists('business_policies');
    }
};
