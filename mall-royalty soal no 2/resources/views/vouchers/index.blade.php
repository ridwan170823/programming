<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Vouchers') }}
        </h2>
    </x-slot>

    <div class="max-w-[85rem] sm:px-6 lg:px-8 lg:py-14 mx-auto">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="flex flex-col">
                <div class="-m-1.5 overflow-x-auto">
                    <div class="p-1.5 min-w-full inline-block align-middle">
                        <div
                            class="bg-white border border-gray-200 rounded-xl shadow-sm overflow-hidden dark:bg-slate-900 dark:border-gray-700">
                            <!-- Header -->
                            <div
                                class="px-6 py-4 grid gap-3 md:flex md:justify-between md:items-center border-b border-gray-200 dark:border-gray-700">
                                <div>
                                    <h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200">
                                        {{ __('Vouchers') }}

                                    </h2>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">
                                        Vouchers list
                                    </p>
                                </div>
                                <p class="text-sm text-gray-600 dark:text-gray-400">
                                    Voucher akan bertambah setiap costumer melakukan claim voucher di aplikasi
                                </p>
                            </div>
                            <!-- Table -->
                            <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
                                <thead
                                    class="bg-gray-50 divide-y divide-gray-200 dark:bg-gray-800 dark:divide-gray-700">
                                    <tr>
                                        <th scope="col"
                                            class="px-6 py-3 text-left border-l border-gray-200 dark:border-gray-700">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                User Id
                                            </span>
                                        </th>

                                        <th scope="col" class="px-6 py-3 text-left">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Code
                                            </span>
                                        </th>
                                        <th scope="col" class="px-6 py-3 text-left">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Amount
                                            </span>
                                        </th>
                                        <th scope="col" class="px-6 py-3 text-left">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Status
                                            </span>
                                        </th>
                                        <th scope="col" class="px-6 py-3 text-left">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Expired At
                                            </span>
                                        </th>

                                        <th scope="col" class="px-6 py-3 text-left">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Created At
                                            </span>
                                        </th>

                                        <th scope="col" class="px-6 py-3 text-left">

                                        </th>
                                    </tr>
                                </thead>

                                <tbody class="divide-y divide-gray-200 dark:divide-gray-700">
                                    @foreach ($vouchers as $item)
                                        <tr>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2 flex items-center gap-x-3">
                                                    <span
                                                        class="text-sm text-gray-600 dark:text-gray-400">{{ $loop->iteration }}.</span>
                                                    <a class="flex items-center gap-x-2" href="#">
                                                        <span
                                                            class="text-sm text-blue-600 decoration-2 hover:underline dark:text-blue-500">{{ $item->user->name }}</span>
                                                    </a>
                                                </div>
                                            </td>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2">
                                                    <span
                                                        class="font-semibold text-sm text-gray-800 dark:text-gray-200">{{ $item->code }}</span>
                                                </div>
                                            </td>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2">
                                                    <span
                                                        class="font-semibold text-sm text-gray-800 dark:text-gray-200">Rp.
                                                        {{ number_format($item->value, 2, '.', ',') }}</span>
                                                </div>
                                            </td>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                @if ($item->status === 'reedem')
                                                    <a class="block" href="javascript:;"
                                                        data-hs-overlay="#hs-ai-invoice-modal">
                                                        <div class="px-6 py-2">
                                                            <span
                                                                class="inline-flex items-center gap-1.5 py-0.5 px-2 rounded-full text-xs font-medium bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-200">
                                                                Redeemed
                                                            </span>
                                                        </div>
                                                    </a>
                                                @else
                                                    <a class="block" href="javascript:;"
                                                        data-hs-overlay="#hs-ai-invoice-modal">
                                                        <div class="px-6 py-2">
                                                            <span
                                                                class="inline-flex items-center gap-1.5 py-0.5 px-2 rounded-full text-xs font-medium bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-200">
                                                                Not Redeemed
                                                            </span>
                                                        </div>
                                                    </a>
                                                @endif
                                            </td>


                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2">
                                                    <span
                                                        class="text-sm text-gray-800 dark:text-gray-200">{{ date('d F Y', strtotime($item->expired_at)) }}</span>
                                                </div>
                                            </td>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2">
                                                    <span
                                                        class="text-sm text-gray-800 dark:text-gray-200">{{ $item->created_at->format('d F Y') }}</span>
                                                </div>
                                            </td>

                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-1.5">
                                                    <form action="{{ route('vouchers.destroy', $item->id) }}"
                                                        method="post">
                                                        @csrf
                                                        @method('delete')
                                                        <button
                                                            class="inline-flex items-center gap-x-1.5 text-sm text-red-600 decoration-2 hover:underline font-medium"
                                                            type="submit">
                                                            Hapus
                                                        </button>
                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach

                                </tbody>
                            </table>
                            <!-- End Table -->

                            <!-- Footer -->
                            <div class="px-6 py-4 grid gap-3 border-gray-200 dark:border-gray-700">
                                {{ $vouchers->links() }}
                            </div>
                            <!-- End Footer -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
