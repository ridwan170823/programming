<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Voucher;
use Illuminate\Http\Request;

class VoucherController extends Controller
{
    public function index()
    {
        $query = Voucher::with(['user'])->orderBy('code');

        if (auth()->user()->role == 'costumer') {
            $query->where('user_id', auth()->user()->id);
        }
        $vouchers = $query->paginate(10);
        return view('vouchers.index', [
            'vouchers' => $vouchers,
            'users' => User::orderBy('name')->get(),
        ]);
    }

    public function destroy(Voucher $voucher)
    {
        $voucher->delete();

        return redirect()->route('vouchers.index')
            ->with('success', 'Voucher deleted successfully');
    }
}
