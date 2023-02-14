<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMemberInfosTable extends Migration
{
    /**
     * Run the migrations.
     *  
     * @return void
     */
    public function up()
    {
        Schema::create('member_infos', function (Blueprint $table) {
            $table->id();
            $table->string('member_id')->nullable();
            $table->integer('entery_degree')->nullable();
            $table->integer('batch')->nullable();
            $table->integer('admission_session')->nullable();
            $table->integer('alumni_category')->nullable();
            $table->integer('entery_degree_completion_year')->nullable();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('gender_id')->nullable();
            $table->integer('exit_degree')->nullable();
            $table->integer('exit_year')->nullable();
            $table->string('current_affiliation')->nullable();
            $table->string('designation')->nullable();
            $table->string('contact_no')->nullable();
            $table->string('email')->nullable();
            $table->text('parmanent_address')->nullable();
            $table->text('current_address')->nullable();
            $table->string('note')->nullable();
            $table->string('scanced_form')->nullable();
            $table->string('member_image')->nullable();
            $table->integer('entry_by')->nullable();
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
        Schema::dropIfExists('member_infos');
    }
}
