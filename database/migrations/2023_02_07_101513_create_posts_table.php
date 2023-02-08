<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->integer('menu_id');
            $table->date('date');
            $table->string('time');
            $table->text('post_title');
            $table->text('post_subtitle');
            $table->longText('details');
            $table->string('author');
            $table->tinyInteger('image_hide_show')->default(1);
            $table->integer('position');
            $table->tinyInteger('status')->default(1);
            $table->string('column_size')->default('col-md-6');
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
        Schema::dropIfExists('posts');
    }
}
