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
        Schema::create('invoice_details', function (Blueprint $table) {
            $table->id('invoice_details_id');
            $table->unsignedBigInteger('invoice_id');
            $table->unsignedBigInteger('products_id');
            $table->integer('quantity');
            $table->float('unit_price');
            $table->float('total');
            $table->timestamps();
            $table->foreign('invoice_id')->references('invoice_id')->on('invoices')->onDelete('cascade');
            $table->foreign('products_id')->references('products_id')->on('products')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('invoice_details');
    }
};
