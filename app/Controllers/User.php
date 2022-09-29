<?php

namespace App\Controllers;

class User extends BaseController
{
    protected $db, $builder;

    public function __construct()
    {
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data = array(
            'title' => 'Dashboard Page',
        );
        return view('user/index', $data);
    }
    public function my_profile($id = 0)
    {

        $data = array(
            'title' => 'My Profile',
        );

        return view('user/my_profile', $data);
    }
}
