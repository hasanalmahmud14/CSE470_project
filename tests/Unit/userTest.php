<?php

namespace Tests\Unit;

// use PHPUnit\Framework\TestCase;
use Tests\TestCase;
use App\Models\User;
use Database\Seeders\UserSeeder;

class userTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_example()
    {
        $this->assertTrue(true);
    }
    //Check  login page 
    public function test_login_form()
    {
        $response = $this->get('/login');

        $response->assertStatus(200);
    }

    //Check search page 
    public function test_search_form()
    {
        $response = $this->get('/search');

        $response->assertStatus(200);
    }

    //Check if data_does_not_exists_in_database
    public function test_if_data_does_not_exists_in_database()
    {
        $this->assertDatabaseHas('users', [
            'name' => 'Joy'
        ]);
    }
}
