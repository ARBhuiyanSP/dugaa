<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMemberRegistrationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member_registrations', function (Blueprint $table) {
            $table->id();
            
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('gender_id')->nullable();
            $table->string('current_affiliation')->nullable();
            $table->string('designation')->nullable();
            $table->string('contact_no')->nullable();
            $table->string('email')->nullable();
            $table->text('parmanent_address')->nullable();
            $table->text('current_address')->nullable();
            $table->string('scanced_form')->nullable();
            $table->string('member_image')->nullable();

            $table->integer('alumni_category')->nullable();
            $table->string('session_bs_bsc')->nullable();
            $table->string('bs_bsc_certificate_year')->nullable();

            $table->string('session_ms_msc')->nullable();
            $table->string('ms_msc_certificate_year')->nullable();

            $table->string('session_mphil')->nullable();
            $table->string('mphil_certificate_year')->nullable();
            $table->string('session_phd')->nullable();
            $table->string('phd_certificate_year')->nullable();

            $table->double('payment_amount')->nullable();
            $table->integer('payment_method_id')->nullable();
            $table->string('payment_details')->nullable();
            $table->string('bank')->nullable();
            $table->string('branch')->nullable();
            $table->string('signature')->nullable();

            $table->integer('status')->default(0);
            $table->integer('checked_by')->nullable();
            $table->integer('approved_by')->nullable();
            $table->integer('entry_by')->nullable();
            $table->integer('updated_by')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('member_registrations');
    }
}
