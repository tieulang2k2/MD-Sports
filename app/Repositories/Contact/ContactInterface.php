<?php

namespace App\Repositories\Contact;

interface ContactInterface
{
    public function getAll();
    public function findById($id);
    public function delete($id);
}
