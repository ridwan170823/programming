<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\Voucher;
use Illuminate\Http\Request;

class TransaksiController extends Controller
{
    public function index()
    {
        $query = Invoice::with(['user', 'tenant'])->orderBy('id');

        if (auth()->user()->role == 'costumer') {
            $query->where('user_id', auth()->user()->id);
        }
        $transaksi = $query->paginate(10);

        return view('transaksi.index', compact('transaksi'));
    }

    public function claim(Request $request)
    {
        $request->validate([
            'transaksi_id' => 'required|exists:invoices,transaction_id',
        ]);

        $transaksi = Invoice::where('transaction_id', $request->transaksi_id)->first();

        if ($transaksi->amount < 1000000) {
            return redirect()->back()->with('error', 'Transaksi tidak valid, hanya transaksi diatas 1.000.000 yang bisa di claim');
        }

        Voucher::create([
            'user_id' => auth()->user()->id,
            'code' => 'VCR' . rand(1000, 9999),
            'value' => 10000,
            'expired_at' => now()->addMonths(3)
        ]);


        return redirect()->back()->with('success', 'Voucher berhasil di claim');
    }
}
