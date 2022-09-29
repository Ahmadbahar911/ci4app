<?php

namespace App\Models;

use CodeIgniter\Model;

class Chat_model extends Model
{
    protected $table = 'messages';
    protected $primaryKey = 'id_pesan';
    protected $allowedFields = ['pengirim', 'penerima', 'pesan'];
}
