<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use App\Models\Category;
return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('products_id');
            $table->foreignIdFor(Category::class,'category_id');
            $table->string('name');
            $table->decimal('price');
            $table->decimal('old_price');
            $table->text('lead');
            $table->text('description');
            $table->string('slug')->unique();
            $table->boolean('is_active')->default(false);
            $table->softDeletes();
            $table->timestamps();
            // $table->foreign('category_id')->references('category_id')->on('categories')->onDelete('cascade'); böylede öylede olr
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
