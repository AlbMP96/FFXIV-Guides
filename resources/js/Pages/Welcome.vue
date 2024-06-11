<script setup>
import ProgressSlider from "../Components/ProgessSlider.vue";
import GuideIndex from "../Components/GuideIndex.vue";
import MainLayout from "@/Layouts/MainLayout.vue";
import { Link } from "@inertiajs/vue3";

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
});
</script>

<template>
    <MainLayout title="Welcome" :canLogin="canLogin" :canRegister="canRegister">
        <main>
            <ProgressSlider :items="news" />
            <div>
                <GuideIndex
                    :guide="post"
                    v-for="post in guides.data"
                    :key="post.id"
                />
                <div
                    :class="`grid grid-cols-${guides.links.length} justify-center`"
                >
                    <Link
                        v-for="(link, index) in guides.links"
                        v-if="guides.links.length > 3"
                        :key="index"
                        :href="link.url"
                        v-html="link.label"
                        :class="`border-2 rounded-sm border-red-600 bg-gray-200 text-black mr-3 px-2 py-1 row-start-1 ${
                            !link.url ? 'hidden' : ''
                        }`"
                    >
                    </Link>
                </div>
            </div>
        </main>
        <footer class="py-16 text-center text-sm text-black dark:text-white/70">
            Laravel v{{ laravelVersion }} (PHP v{{ phpVersion }})
        </footer>
    </MainLayout>
</template>
