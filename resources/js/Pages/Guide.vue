<script setup>
import {Head, Link} from '@inertiajs/vue3';
import Header from '../Components/Header.vue';

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
    news: {
        type: Array,
    },
});

</script>

<template>
    <Head title="News" />
        <div class="bg-gray-50 text-black/50 dark:bg-black dark:text-white/50">
            <div
                class="relative min-h-screen flex flex-col items-center justify-center selection:bg-[#FF2D20] selection:text-white"
                >
                <div class="relative w-full max-w-2xl px-6 lg:max-w-7xl">
                    <Header :canLogin="canLogin" :canRegister="canRegister"/>
                    <main class="mb-10">
                       <QuillEditor toolbar="essential" class="text-black bg-white mx-5"/>
                    </main>
               </div>
            </div>
        </div>
</template>
