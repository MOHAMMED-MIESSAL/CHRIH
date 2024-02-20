<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Payment;
use Carbon\Carbon;
use Mollie\Laravel\Facades\Mollie;
 
class MollieController extends Controller
{
    public function mollie(Request $request)
    {
        $payment = Mollie::api()->payments->create([
            "amount" => [
                "currency" => "EUR",
                "value" => "10.00" 
            ],
            "description" => "product_name",
            "redirectUrl" => route('success'),
            //"webhookUrl" => route('webhooks.mollie'),
            // "metadata" => [
            //     "order_id" => Carbon::now(),
            // ],
        ]);

        //dd($payment);

        session()->put('paymentId', $payment->id);
        session()->put('quantity', 3);
    
        // redirect customer to Mollie checkout page
        return redirect($payment->getCheckoutUrl(), 303);
    }

    public function success(Request $request)
    {
        $paymentId = session()->get('paymentId');
        //dd($paymentId);
        $payment = Mollie::api()->payments->get($paymentId);
        //dd($payment);
        if($payment->isPaid())
        {
            $obj = new Payment();
            $obj->payment_id = $paymentId;
            $obj->numero_serie = $payment->description;
            $obj->quantity = session()->get('quantity');
            $obj->amount = $payment->amount->value;
            $obj->currency = $payment->amount->currency;
            $obj->payment_status = "Completed";
            $obj->payment_method = "Mollie";
            $obj->user_id = 3;

            $obj->save();

            session()->forget('paymentId');
            session()->forget('quantity');

            return redirect('/');
        } else {
            return redirect()->route('cancel');
        }
    }

    public function cancel()
    {
        echo "Payment is cancelled.";
    }
}