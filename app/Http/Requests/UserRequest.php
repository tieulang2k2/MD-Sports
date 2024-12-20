<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
use app\Models\User;
use Illuminate\Database\Eloquent\Model;
class UserRequest extends FormRequest
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
        if ($this->method() == 'PUT') {
            $user_id = $this->segment(4);
            return [ 
                'name' => 'required|max:50|unique:users,name,'.$user_id, 
                'email' => 'required|max:150|email|unique:users,email,'.$user_id,
            ];
        } else {
            return [ 
                'name' => 'required|max:50|unique:users,name', 
                'email' => 'required|max:150|email|unique:users,email',
                'password' => 'required|min:6|confirmed'
            ];
        }
        
    }
    public function messages()
    {
        return [
            'name.required' => 'Vui lòng nhập Tên!',
            'name.max' => 'Tên không được vượt quá 50 ký tự!',
            'name.unique' => 'Tên đã tồn tại, vui lòng thử tên khác.',
            'email.required' => 'Vui lòng nhập Email!',
            'email.max' => 'Email không được vượt quá 150 ký tự!',
            'email.email' => 'Email không hợp lệ!',
            'email.unique' => 'Email đã tồn tại, vui lòng thử email khác.',
            'password.required' => 'Vui lòng nhập Mật khẩu!',
            'password.min' => 'Mật khẩu phải có ít nhất 6 ký tự!',
            'password.confirmed' => 'Xác nhận mật khẩu không khớp.',
        ];
        
    }
}
