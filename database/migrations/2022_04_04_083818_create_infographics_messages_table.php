<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInfographicsMessagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('infographics_messages', function (Blueprint $table) {
            $table->id();
            $table->string('infographics_subject');
            $table->text('infographics_description');
            $table->string('image_path');
            $table->integer('display_duration');
            $table->string('display_status');
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
        Schema::dropIfExists('infographics_messages');
    }
}
