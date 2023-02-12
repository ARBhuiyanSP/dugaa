<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomePageSetupsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_page_setups', function (Blueprint $table) {
            $table->id();
            $table->integer('menu_id');
            $table->float('serial')->defalut(1);
            $table->integer('_limit')->defalut(5);
            $table->integer('status')->defalut(0);
            $table->integer('block_type')->comment('1=main block,2=Side Block');
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('home_page_setups');
    }
}
