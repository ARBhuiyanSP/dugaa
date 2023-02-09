<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('images', function (Blueprint $table) {
            $table->id();
            $table->string('image');
            $table->integer('post_id');
            $table->integer('menu_id');
            $table->tinyInteger('status')->default(1);
            $table->text('title')->nullable();
            $table->text('vedio_link')->nullable();
            $table->text('sub_title')->nullable();
            $table->string('_dis_cloumn')->nullable();
            $table->float('serial')->nullable();
            $table->tinyInteger('is_video')->default(0);
            $table->tinyInteger('is_dawnloadable')->default(0);
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
        Schema::dropIfExists('images');
    }
}
