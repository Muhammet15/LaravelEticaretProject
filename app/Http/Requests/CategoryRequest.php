<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize():bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules():array
    {
        return [
            "name"=>"required",
            "slug"=>"required|sometimes|unique:App\Models\Category,slug",
     
        ];
    }
    public function messages():array
    {
        return [
            "name.required"=>"Bu alan zorunludur.",
            "slug.required"=>"Bu alan zorunludur.",
            "slug.unique"=>"girdiğiniz :attribute sistemde kayıtlıdır",

        ];
    }
}
