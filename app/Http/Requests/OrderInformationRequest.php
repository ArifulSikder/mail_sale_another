<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Password;

class OrderInformationRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        $checkout = [
            'id' => 'nullable|numeric',
            'f_name' => 'required|string|max:255',
            'l_name' => 'required|string|max:255',
            'company_name' => 'required|string|max:255',
            'code' => 'required|string',
            'street' => 'required|string|max:255',
            'address' => 'nullable|max:255',
            'town' => 'required|string|max:255',
            'country' => 'nullable|max:255',
            'post_code' => 'required|string|max:255',
            'phone' => 'required|string|max:255',
            'email' => 'required|email',
            'note' => 'nullable|max:1000',
            'product_id' => 'required|array',
            'product_id.*' => 'required|numeric',
            'product_quantity' => 'required|array',
            'product_quantity.*' => 'required|numeric',
            'payment_method' => 'required|numeric',
            'agree' => 'required|numeric',
        ];
        $create_account = [];
        if ($this->create_account == 1) {
            $create_account = [
                'email' => 'required|email:rfc,dns|unique:users,email',
                'username' => 'required|unique:users,username',
                'password' => ['required', "min:8", 'string'],
            ];
        }

        $mergedArray = array_merge($checkout, $create_account);

        return $mergedArray;
    }

    public function messages(){
        return [
            'f_name.required' => 'First name is required.',
            'l_name.required' => 'Last name is required.',
            'company_name.required' => 'Company name is required.',
            'code.required' => 'Country name is required.',
            'street.required' => 'Street is required.',
            'town.required' => 'Town is required.',
            'post_code.required' => 'Post code is required.',
            'phone.required' => 'Phone number is required.',
            'payment_method.required' => 'Please select a payment type.',
            'agree.required' => 'Please agree with us.',
            'email.required' => 'Email is required',
            'username.required' => 'Username is required',
            'password.required' => 'Password is required',
        ];

    }
}
