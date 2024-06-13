<script setup>
import { Link } from "@inertiajs/vue3";
import LoginDropdown from "../Components/LoginDropdown.vue";
import ApplicationLogo from "./ApplicationLogo.vue";

defineProps({
    canLogin: {
        type: Boolean,
        default: false,
    },
    canRegister: {
        type: Boolean,
        default: false,
    },
});
</script>

<template>
    <header
        class="grid grid-cols-3 text-sm sm:text-base items-center gap-2 pt-10 mb-10 grid-rows-2 border border-3 border-b-red-600 border-l-transparent border-t-transparent border-r-transparent"
    >
        <Link
            class="lg:w-28 col-start-2 justify-self-center sm:justify-self-start sm:col-start-1 size-20 text-center"
            href="/"
            ><ApplicationLogo
        /></Link>
        <Link href="/"
            ><img
                class="mx-auto hidden sm:inline"
                src="/assets/images/FFXIVGuidesLogo.png"
        /></Link>
        <nav
            v-if="canLogin"
            :class="`col-start-2 col-end-4 sm:col-start-3 row-start-2
                ${
                    $page.props.auth.user
                        ? 'mx-3 grid grid-cols-1 justify-end'
                        : 'mx-3 flex flex-1 justify-self-end'
                }`"
        >
            <span v-if="$page.props.auth.user" class="justify-self-end">
                {{ $page.props.auth.user.name }}
            </span>
            <Link
                v-if="$page.props.auth.user"
                :href="route('logout')"
                method="post"
                as="button"
                class="justify-self-end rounded-md px-3 py-2 ring-1 ring-transparent transitionfocus:outline-none text-white hover:text-white/80 focus-visible:ring-white"
            >
                Log Out
            </Link>

            <template v-else>
                <Link
                    :href="route('login')"
                    class="hidden md:inline rounded-md px-3 py-2 ring-1 ring-transparent transition focus:outline-none text-white hover:text-white/80 focus-visible:ring-white"
                >
                    Log in
                </Link>

                <Link
                    v-if="canRegister"
                    :href="route('register')"
                    class="hidden md:inline rounded-md px-3 py-2 ring-1 ring-transparent transition focus:outline-none text-white hover:text-white/80 focus-visible:ring-white"
                >
                    Register
                </Link>
                <LoginDropdown class="visible md:hidden" />
            </template>
        </nav>

        <nav class="mb-5 col-start-1 col-end-3 row-start-2 overflow-visible">
            <Link
                :href="route('news')"
                class="mx-2 hover:underline hover:decoration-red-600"
                >News</Link
            >
            <Link
                :href="route('guide')"
                class="mx-2 hover:underline hover:decoration-red-600"
                >Create guide</Link
            >
        </nav>
    </header>
</template>
