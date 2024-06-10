<script setup>
import { Head, Link } from '@inertiajs/vue3';
import ProgressSlider from '../Components/ProgessSlider.vue';
import Header from '../Components/Header.vue';
import GuideIndex from '../Components/GuideIndex.vue';
import GuideModal from '../Components/GuideModal.vue';
import { Teleport } from 'vue';

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
    laravelVersion: {
        type: String,
        required: true,
    },
    phpVersion: {
        type: String,
        required: true,
    },
    news: {
        type: Array,
    },
    guides: {
        type: JSON,
    },
    guide: {
        type: JSON,
    },
});

</script>

<template>
    <Head title="Welcome" />
    <div class="bg-gray-50 text-black/50 dark:bg-black dark:text-white/50">
        <div
            class="relative min-h-screen flex flex-col items-center justify-center selection:bg-[#FF2D20] selection:text-white"
        >
            <div class="relative w-full max-w-2xl px-6 lg:max-w-7xl">
                <Header :canLogin="canLogin" :canRegister="canRegister"/>
               <main>
                    <ProgressSlider :items="news.slice(0,5)" />
                    <div>
                        <GuideIndex :guide="post" v-for="post in guides.data" :key="post.id"/>
                    </div>
                </main>
                <footer class="py-16 text-center text-sm text-black dark:text-white/70">
                    Laravel v{{ laravelVersion }} (PHP v{{ phpVersion }})
                </footer>
            </div>
        </div>
        <Teleport to="body" v-if="guide">
        {{ console.log(guide) }}
            <GuideModal v-if="guide" :guide="guide"/>
        </Teleport>
    </div>
</template>
