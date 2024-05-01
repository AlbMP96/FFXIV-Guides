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
                    <nav>
                        <Link href="/news">News</Link>
                    </nav>
                    <main>
                        <div v-for="item in news" :key="item.id" class="text-center text-white border border-4 border-red-500 rounded p-3.5 my-3.5">
                            <a :href="item.url" target="_blank">
                                <div>
                                    <p class="text-2xl underline mb-2 decoration-2">{{ item.title }}</p>
                                    <img class="mx-auto" :src="item.image" :alt="item.title">
                                    <p>{{ item.description }}</p>
                                </div>
                            </a>
                        </div>
                    </main>
               </div>
            </div>
        </div>

</template>
