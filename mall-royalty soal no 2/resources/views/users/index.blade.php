<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Users') }}
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
                                        Users
                                    </h2>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">
                                        Users list
                                    </p>
                                </div>

                                <div>
                                    <div class="inline-flex gap-x-2">
                                        <a class="py-2 px-3 inline-flex justify-center items-center gap-2 rounded-md border border-transparent font-semibold bg-blue-500 text-white hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition-all text-sm dark:focus:ring-offset-gray-800"
                                            x-data=""
                                            x-on:click.prevent="$dispatch('open-modal', 'createNew')"
                                            href="javascript:;">
                                            <svg class="w-3 h-3" xmlns="http://www.w3.org/2000/svg" width="16"
                                                height="16" viewBox="0 0 16 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path d="M2.63452 7.50001L13.6345 7.5M8.13452 13V2"
                                                    stroke="currentColor" stroke-width="2" stroke-linecap="round" />
                                            </svg>
                                            Create
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <x-modal name="createNew" :show="$errors->isNotEmpty()" focusable>
                                <form method="post" action="{{ route('users.store') }}" class="p-6">
                                    @csrf

                                    <h2 class="text-lg font-medium text-gray-900">
                                        Create New Users
                                    </h2>
                                    <div class="sm:flex gap-2">
                                        <x-input-label for="name" value="{{ __('Name') }}" class="sr-only" />

                                        <x-text-input id="name" name="name" type="text"
                                            class="mt-4 block w-1/2" placeholder="{{ __('name') }}" />

                                        <x-input-error :messages="$errors->get('name')" class="mt-2" />

                                        <x-input-label for="email" value="{{ __('Email') }}" class="sr-only" />
                                        <x-text-input id="email" name="email" type="email"
                                            class="mt-4 block w-1/2" placeholder="{{ __('email') }}" />

                                        <x-input-error :messages="$errors->get('email')" class="mt-2" />
                                    </div>
                                    <div class="sm:flex gap-2">
                                        <x-input-label for="password" value="{{ __('Password') }}" class="sr-only" />

                                        <x-text-input id="password" name="password" type="password"
                                            class="mt-4 block w-1/2" placeholder="{{ __('password') }}" />

                                        <x-input-error :messages="$errors->get('password')" class="mt-2" />

                                        <x-input-label for="password_confirmation" value="{{ __('Confirm Password') }}"
                                            class="sr-only" />
                                        <x-text-input id="password_confirmation" name="password_confirmation"
                                            type="password" class="mt-4 block w-1/2"
                                            placeholder="{{ __('password_confirmation') }}" />

                                        <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
                                    </div>


                                    <div class="mt-6 flex justify-end">
                                        <x-secondary-button x-on:click="$dispatch('close')">
                                            {{ __('Cancel') }}
                                        </x-secondary-button>

                                        <x-primary-button class="ml-3">
                                            {{ __('Simpan') }}
                                        </x-primary-button>
                                    </div>
                                </form>
                            </x-modal>
                            <!-- End Header -->

                            <!-- Table -->
                            <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
                                <thead
                                    class="bg-gray-50 divide-y divide-gray-200 dark:bg-gray-800 dark:divide-gray-700">
                                    <tr>
                                        <th scope="col"
                                            class="px-6 py-3 text-left border-l border-gray-200 dark:border-gray-700">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Name
                                            </span>
                                        </th>

                                        <th scope="col" class="px-6 py-3 text-left">
                                            <span
                                                class="text-xs font-semibold uppercase tracking-wide text-gray-800 dark:text-gray-200">
                                                Email
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
                                    @foreach ($users as $item)
                                        <tr>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2 flex items-center gap-x-3">
                                                    <span
                                                        class="text-sm text-gray-600 dark:text-gray-400">{{ $loop->iteration }}.</span>
                                                    <a class="flex items-center gap-x-2" href="#">
                                                        <span
                                                            class="text-sm text-blue-600 decoration-2 hover:underline dark:text-blue-500">{{ $item->name }}</span>
                                                    </a>
                                                </div>
                                            </td>
                                            <td class="h-px w-auto whitespace-nowrap">
                                                <div class="px-6 py-2">
                                                    <span
                                                        class="font-semibold text-sm text-gray-800 dark:text-gray-200">{{ $item->email }}</span>
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
                                                    <form action="{{ route('users.destroy', $item->id) }}"
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
                                {{ $users->links() }}
                            </div>
                            <!-- End Footer -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
