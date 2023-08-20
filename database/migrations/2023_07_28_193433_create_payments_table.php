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
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->nullable();
            $table->string('card_name')->nullable();
            $table->bigInteger('card_number')->nullable();
            $table->bigInteger('expiry_month')->nullable();
            $table->bigInteger('expiry_year')->nullable();
            $table->bigInteger('card_cvc')->nullable();
            $table->string('stripeToken')->nullable();
            $table->double('amount', 8,2);
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
        Schema::dropIfExists('payments');
    }
};
