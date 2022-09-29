<?php

namespace App\Controllers;

use App\Models\Chat_model;

require '../vendor/autoload.php';

class Chat extends BaseController
{
    protected $db, $builder;

    public function __construct()
    {
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
        $this->Chat_model = new Chat_model();
    }
    public function index()
    {
        $this->builder->select('users.id as userid, username, email, fullname, user_image, created_at, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $query = $this->builder->get();
        $data = array(
            'title' => 'Chat Users Page',
            'users' => $query->getResult(),
        );
        return view('admin/chat_users', $data);
    }
    public function chatting($id = 0)
    {
        $this->builder->select('users.id as userid, username, email, fullname, user_image, created_at, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        $query = $this->builder->get();

        $data = array(
            'title' => 'User Detail',
            'users' => $query->getRow(),
        );

        if (empty($data['users'])) {
            return redirect()->to('/admin');
        }

        return view('admin/chatting', $data);
    }
    public function store()
    {
        // $this->Chat_model->getInsert([
        //     'pengirim' => $this->request->getVar('pengirim'),
        //     'penerima' => $this->request->getVar('penerima'),
        //     'pesan' => $this->request->getVar('pesan')
        // ]);

        // $options = array(
        //     'cluster' => 'ap1',
        //     'useTLS' => true
        // );
        // $pusher = new Pusher\Pusher(
        //     'a6f821075d0a0f259208',
        //     'd701b036843e7d35497a',
        //     '1442049',
        //     $options
        // );

        // $data['message'] = 'hello world';
        // $pusher->trigger('my-channel', 'my-event', $data);

        // if($)
    }
}
