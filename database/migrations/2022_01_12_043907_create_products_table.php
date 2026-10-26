<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('product_id');
            $table->string('product_name')->nullable();
            $table->string('product_sort_des')->nullable();
            $table->string('product_regular_price')->nullable();
            $table->string('product_price')->nullable();
            $table->foreignId('product_brand_id')->constrained("brands", "brand_id")->caseCadeOnUpdate()->caseCadeOnDelete();
            $table->foreignId('product_category_id')->constrained("categories", "category_id")->caseCadeOnUpdate()->caseCadeOnDelete();
            $table->string('product_image')->nullable();
            $table->text('product_description')->nullable();
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
        Schema::dropIfExists('products');
    }
}
