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
        class="grid items-center gap-2 pt-10 mb-10 grid-cols-3 border border-3 border-b-red-600 border-l-transparent border-t-transparent border-r-transparent"
    >
        <Link class="lg:w-28 size-20 text-center" href="/"
            ><ApplicationLogo
        /></Link>
        <Link href="/"
            ><img
                class="mx-auto hidden sm:inline"
                src="/assets/images/FFXIVGuidesLogo.png"
        /></Link>
        <nav
            v-if="canLogin"
            :class="
                $page.props.auth.user
                    ? 'mx-3 grid grid-cols-1 justify-end'
                    : 'mx-3 flex flex-1 justify-self-end'
            "
        >
            <span v-if="$page.props.auth.user" class="justify-self-end">
                {{ $page.props.auth.user.name }}
            </span>
            <Link
                v-if="$page.props.auth.user"
                :href="route('logout')"
                method="post"
                as="button"
                class="justify-self-end rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
            >
                Log Out
            </Link>

            <template v-else>
                <Link
                    :href="route('login')"
                    class="collapse md:visible rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                >
                    Log in
                </Link>

                <Link
                    v-if="canRegister"
                    :href="route('register')"
                    class="collapse md:visible rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                >
                    Register
                </Link>
                <LoginDropdown class="visible md:collapse" />
            </template>
        </nav>

        <nav class="mb-5 col-start-1 row-start-2 overflow-visible">
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
