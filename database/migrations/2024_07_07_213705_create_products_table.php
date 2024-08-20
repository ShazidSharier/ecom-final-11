<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->integer('sub_category_id');
            $table->integer('brand_id');
            $table->integer('unit_id');
            $table->string('name')->unique();
            $table->text('slug')->unique();
            $table->string('code')->unique();
            $table->float('regular_price',11,2);
            $table->float('selling_price',11,2);
            $table->integer('stock_amount');
            $table->text('short_description');
            $table->longtext('long_description');
            $table->integer('sales_count')->default(0);
            $table->integer('hit_count')->default(0);
            $table->tinyInteger('featured_status')->default(0)->comment('1 = featured and 0= not featured');
            $table->text('image');
            $table->text('meta_title')->nullable();
            $table->text('meta_description')->nullable();
            $table->tinyInteger('status')->default(1)->comment('1 = active and 0= inactive');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
