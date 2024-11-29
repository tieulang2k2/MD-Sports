<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\Contact\ContactInterface;
use App\Models\Contact;

class ContactController extends Controller
{
    protected $contactRepository;

    public function __construct(ContactInterface $contactRepository)
    {
        $this->contactRepository = $contactRepository;
    }

    public function index()
    {
        $contacts = Contact::all();
        return view('admin.layouts.contacts.index', compact('contacts'));
    }

    public function show($id)
    {
        $contact = Contact::findOrFail($id);
        return view('admin.layouts.contacts.show', compact('contact'));
    }

    // public function destroy($id)
    // {
    //     $contact = Contact::findOrFail($id);
    //     $contact->delete();
    //     return redirect()->route('contact.index')->with('success', 'Contact deleted successfully');
    // }
}
