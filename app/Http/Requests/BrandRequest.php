<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BrandRequest extends FormRequest
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
        if ($this->method()=='PUT'){
             $brand_id = $this->segment(4);
            return [
                'name'      => 'required|max:100|unique:brands,name,'.$brand_id,
                'address'   => 'required|max:100|min:10',
                'phone_no'  => 'required|regex:/^[0][0-9]*$/|size:10',
                'logo'      => 'mimes:jpeg,jpg,png',
            ];
        }else{
            return [
                'name'      => 'required|max:100|unique:brands,name', 
                'address'   => 'required|max:100|min:10',
                'phone_no'  => 'required|regex:/^[0][0-9]*$/|size:10',
                'logo'      => 'required|mimes:jpeg,jpg,png',
            ];
        } 
    }
    public function messages()
{
    return [
        'name.required' => 'Vui lòng nhập tên.',
        'name.max' => 'Độ dài tối đa của tên là 100 ký tự.',
        'name.unique' => 'Tên đã tồn tại, vui lòng thử tên khác.',
        'address.required' => 'Vui lòng nhập địa chỉ.',
        'address.max' => 'Độ dài tối đa của địa chỉ là 100 ký tự.',
        'address.min' => 'Độ dài tối thiểu của địa chỉ là 10 ký tự.',
        'phone_no.required' => 'Vui lòng nhập số điện thoại.',
        'phone_no.regex' => 'Số điện thoại không hợp lệ.',
        'phone_no.size' => 'Số điện thoại phải có 10 chữ số.',
        'logo.required' => 'Vui lòng chọn logo.',
        'logo.mimes' => 'Hình ảnh phải là một bức ảnh (jpeg, png, jpg).',
    ];
}

}
