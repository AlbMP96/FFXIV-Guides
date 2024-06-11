<script setup>
import ProgressSlider from "../Components/ProgessSlider.vue";
import GuideIndex from "../Components/GuideIndex.vue";
import MainLayout from "@/Layouts/MainLayout.vue";
import Paginator from "../Components/Paginator.vue";

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
            <div class="py-3 my-5">
                <h1 class="text-3xl underline text-center text-gray-200 my-5">
                    Guides
                </h1>
                <GuideIndex
                    v-for="post in guides.data"
                    :guide="post"
                    :key="post.id"
                />
                <Paginator :links="guides.links" />
            </div>
        </main>
        <footer class="py-16 text-center text-sm text-black dark:text-white/70">
            Laravel v{{ laravelVersion }} (PHP v{{ phpVersion }})
        </footer>
    </MainLayout>
</template>
