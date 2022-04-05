<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCorporateNoticesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('corporate_notices', function (Blueprint $table) {
            $table->id();
            $table->string('notice_audience');
            $table->string('notice_owner');
            $table->string('notice_subject');
            $table->string('notice_main_content');
            $table->string('notice_attachement');
            $table->string('active_status');
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
        Schema::dropIfExists('corporate_notices');
    }
}
