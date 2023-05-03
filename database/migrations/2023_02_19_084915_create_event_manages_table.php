<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventManagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('event_manages', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('department_name')->nullable();
            $table->string('card_left_image')->nullable();
            $table->string('card_right_image')->nullable();
            $table->date('event_date')->nullable();
            $table->string('background_image')->nullable();
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
        Schema::dropIfExists('event_manages');
    }
}
