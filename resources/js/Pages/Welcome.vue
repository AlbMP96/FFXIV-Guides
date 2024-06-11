<script setup>
import ProgressSlider from "../Components/ProgessSlider.vue";
import GuideIndex from "../Components/GuideIndex.vue";
import GuideModal from "../Components/GuideModal.vue";
import { Teleport } from "vue";
import MainLayout from "@/Layouts/MainLayout.vue";

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
    <MainLayout title="Welcome" :canLogin="canLogin" :canRegister="canRegister">
        <main>
            <ProgressSlider :items="news.slice(0, 5)" />
            <div>
                <GuideIndex
                    :guide="post"
                    v-for="post in guides.data"
                    :key="post.id"
                />
            </div>
        </main>
        <footer class="py-16 text-center text-sm text-black dark:text-white/70">
            Laravel v{{ laravelVersion }} (PHP v{{ phpVersion }})
        </footer>
    </MainLayout>
    <Teleport to="body" v-if="guide">
        {{ console.log(guide) }}
        <GuideModal v-if="guide" :guide="guide" />
    </Teleport>
</template>
