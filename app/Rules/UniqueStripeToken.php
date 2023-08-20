<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class UniqueStripeToken implements Rule
{
    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $usedTokens = session()->get('stripeToken', []);

        if (in_array($value, $usedTokens)) {
            return false; // The token is not unique.
        }

        $usedTokens[] = $value;
        session()->put('stripeToken', $usedTokens);
        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
   
    public function message()
    {
        return 'The :attribute cannot be used more than once.';
    }
}
