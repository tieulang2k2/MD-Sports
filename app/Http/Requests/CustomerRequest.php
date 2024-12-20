<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'full_name'=> 'required|max:100',
                'address'=> 'required|max:100|min:10',
                'phone_no'  => 'required|regex:/^[0][0-9]*$/|size:10',
                 'email' => 'required|max:150',
                   'slug'=> 'required'
        ];
    }
    public function messages()
    {
        return [
            'full_name.required' => 'Vui lòng nhập Tên.',
            'full_name.max' => 'Tên không được vượt quá 100 ký tự.',
            'address.required' => 'Vui lòng nhập Địa chỉ.',
            'address.max' => 'Địa chỉ không được vượt quá 100 ký tự.',
            'address.min' => 'Địa chỉ phải có ít nhất 10 ký tự.',
            'phone_no.required' => 'Vui lòng nhập Số điện thoại.',
            'phone_no.regex' => 'Số điện thoại không hợp lệ.',
            'phone_no.size' => 'Số điện thoại phải có 10 chữ số.',
            'email.required' => 'Vui lòng nhập Email!',
            'email.max' => 'Email không được vượt quá 150 ký tự!',
            'slug.required' => 'Vui lòng nhập slug.',
        ];
        
    }
}
