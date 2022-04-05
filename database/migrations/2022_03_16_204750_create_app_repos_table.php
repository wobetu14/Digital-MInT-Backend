<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAppReposTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('app_repos', function (Blueprint $table) {
            $table->id();
            $table->string('app_name');
            $table->string('app_description');
            $table->string('app_ipaddress');
            $table->string('app_url')->nullable();
            $table->string('app_thumbnail')->nullable();
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
        Schema::dropIfExists('app_repos');
    }
}
