<?php

namespace App\Http\Controllers;

use App\Models\Tenant;
use Illuminate\Http\Request;

class TenantController extends Controller
{
    public function index()
    {
        return view('tenant.index', [
            'tenants' => Tenant::orderBy('name')->paginate(10)
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:tenants|max:255',
            'location' => 'required|max:255',
            'category' => 'required|max:255',
        ]);

        Tenant::create([
            'name' => $request->name,
            'location' => $request->location,
            'category' => $request->category,
        ]);

        return redirect()->route('tenants.index')
            ->with('success', 'Tenant created successfully.');
    }

    public function destroy(Tenant $tenant)
    {
        $tenant->delete();

        return redirect()->route('tenants.index')
            ->with('success', 'Tenant deleted successfully');
    }
}
