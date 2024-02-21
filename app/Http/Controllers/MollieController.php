<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;
use App\Models\Payment;
use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Auth;
use Mollie\Laravel\Facades\Mollie;
use Ramsey\Uuid\Type\Decimal;
use Symfony\Component\VarDumper\VarDumper;

class MollieController extends Controller
{
 
    public function mollie(Request $request)
    {
        
        $products_quantites = array_combine ($request->produits, $request->qte);
        $order_total=$request->order_total;

        $order_total_number = number_format($order_total, 2);
        $decimal_num_dec = str_replace(',', '', $order_total_number);

        session_start();
        session()->put('order_total',$order_total);
        session()->put('products_quantites',$products_quantites);
        $payment = Mollie::api()->payments->create([
            "amount" => [
                "currency" => "EUR",
                "value" => $decimal_num_dec ,    
            ],
            "description" => "Payment Chrih",
            "redirectUrl" => route('success'),
        ]);

        // dd($payment);

        session()->put('paymentId', $payment->id);
    
        // redirect customer to Mollie checkout page
        return redirect($payment->getCheckoutUrl(), 303);
    }

    public function success(Request $request)
    {
        $order_total= session()->get('order_total');
        $products_quantites=session()->get('products_quantites');
        $paymentId = session()->get('paymentId');
        var_dump($products_quantites);
        // foreach($products_quantites as $Command){
        //     var_dump( $Command);
        // }
        // $payment = Mollie::api()->payments->get($paymentId);
        // //dd($payment);
        // if($payment->isPaid())
        // {

        //     $obj = new Payment();
        //     $obj->payment_id = $paymentId;
        //     $obj->numero_serie = $payment->description;
        //     $obj->amount = $payment->amount->value;
        //     $obj->currency = $payment->amount->currency;
        //     $obj->payment_status = "Completed";
        //     $obj->payment_method = "Bank";
        //     $obj->user_id = Auth::id();

        //     $obj->save();

        //     foreach($products_quantites as $commande){
        //         Command::create([
        //             "user_id" => Auth::id(),
        //             "" => ,
        //             "" => ,
        //             "" => ,
        //         ]);
        //     }

        Cart::where('user_id',Auth::id())->delete();

        //     session()->forget('paymentId');
        //     session()->forget('order_total');
        //     session()->forget('products_quantites');

        //     return redirect('/');
        // } else {
        //     return redirect()->route('cancel');
        // }
    }

    public function cancel()
    {
        echo "Payment is cancelled.";
    }
}