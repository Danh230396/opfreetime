<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHobbiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hobbies', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',255);
            $table->text('description');
            $table->integer('type_hobby_id')->unsigned();
            $table->foreign('type_hobby_id')->references('id')->on('type_hobbies')->onDelete('cascade');
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
        Schema::drop('hobbies');
    }
}
