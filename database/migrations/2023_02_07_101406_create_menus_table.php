<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->id();
            $table->string('menu_name');
            $table->string('slug');
            $table->integer('parent_id')->default(0);
            $table->float('serial')->default(1);
            $table->tinyInteger('status')->default(1);
            $table->tinyInteger('is_main_menu_show')->default(1);
            $table->tinyInteger('is_footer_menu_show')->default(0);
            $table->tinyInteger('have_child')->default(0);
            $table->integer('page_type')->default(1)->comment('multiple post = 1,only page = 2, gallery = 3');
            $table->integer('created_by');
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
        Schema::dropIfExists('menus');
    }
}
