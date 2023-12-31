<?php

namespace Database\Seeders;

use App\Models\Order;
use App\Models\Payment;
use App\Models\PurchaseProduct;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    
        for ($i=0; $i < 10; $i++) { 

              // Get the current year
        $currentYear = Carbon::now()->year;

        // Create a Carbon instance for the first day of the current year
        $startDate = Carbon::create($currentYear, 1, 1, 0, 0, 0);

        // Create a Carbon instance for the last day of the current year
        $endDate = Carbon::create($currentYear, 12, 31, 23, 59, 59);

        // Generate a random timestamp between $startDate and $endDate
        $randomTimestamp = Carbon::createFromTimestamp(rand(
            $startDate->timestamp,
            $endDate->timestamp
        ));








            $order = new Order();
            $order->f_name = Str::random(10);
            $order->l_name = Str::random(10);
            $order->company_name = Str::random(10);
            $order->code = Str::random(2);
            $order->street = Str::random(10);
            $order->address = Str::random(10);
            $order->town = Str::random(10);
            $order->country = Str::random(10);
            $order->post_code = rand(1,4);
            $order->phone = rand(1,10);
            $order->email = Str::random(10)."@gmail.com";
            $order->note = Str::random(10);
            $order->total_price = 222;
            $order->payment_method = 1;
            $order->agree = 1;
            $order->created_at = $randomTimestamp;
            $order->save();
    
                $purchase_product = new PurchaseProduct();
                $purchase_product->order_id = $order->id;
                $purchase_product->product_id = 2;
                $purchase_product->product_quantity = 1;
                $purchase_product->sales_price = 22;
                $order->created_at = $randomTimestamp;
                $purchase_product->save();
          
    
            $payment = new Payment();
            $payment->order_id = $order->id;
            $payment->card_name = "stripe";
            $payment->card_number = "4242424242424242";
            $payment->expiry_month = 12;
            $payment->expiry_year = 2028;
            $payment->card_cvc = 123;
            $payment->stripeToken = Str::random(20);
            $payment->amount = 22;
            $order->created_at = $randomTimestamp;
            $payment->save();
        }

    }

}
