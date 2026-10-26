<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id('orders_id');
            $table->foreignId("orders_customer_id")->constrained("customers", "customers_id")->caseCadeOnUpdate()->caseCadeOnDelete();
            $table->foreignId("orders_product_id")->constrained("products", "product_id")->caseCadeOnUpdate()->caseCadeOnDelete();
            $table->string('orders_product_name')->nullable();
            $table->string('orders_product_image')->nullable();
            $table->string('orders_product_qty')->nullable();
            $table->string('orders_product_price')->nullable();
            $table->dateTime('orders_date')->useCurrent();
            $table->date('orders_date_only');
            $table->integer('order_work_status')->default(1);
            $table->integer('orders_status')->default(1);
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
        Schema::dropIfExists('orders');
    }
}
