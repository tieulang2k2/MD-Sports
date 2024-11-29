<?php

namespace App\Repositories\Contact;

use App\Models\Contact;

class ContactRepository implements ContactInterface
{
    public function getAll()
    {
        return Contact::all();
    }

    public function findById($id)
    {
        return Contact::findOrFail($id);
    }

    public function delete($id)
    {
        $contact = $this->findById($id);
        return $contact->delete();
    }

    public function getTotalContacts()
    {
        return Contact::count();
    }
}

