<script setup>
import { Head } from "@inertiajs/vue3";
import Header from "../Components/Header.vue";

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
    title: {
        type: String,
    },
});
</script>

<template>
    <Head :title="title" />
    <div
        class="bg-gray-50 text-black/50 dark:bg-black dark:text-white/50 w-screen"
    >
        <div
            class="relative mx-2 flex flex-col items-center justify-center selection:bg-[#FF2D20] selection:text-white m-0"
        >
            <div
                class="relative min-h-screen w-full max-w-2xl px-6 lg:max-w-7xl"
            >
                <Header :canLogin="canLogin" :canRegister="canRegister" />
                <slot></slot>
            </div>
        </div>
    </div>
</template>

<style lang="postcss" scoped></style>
