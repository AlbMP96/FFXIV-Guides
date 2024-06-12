<script setup>
import ProgressSlider from "../Components/ProgessSlider.vue";
import MainLayout from "@/Layouts/MainLayout.vue";
import FilterForm from "../Components/FilterForm.vue";

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
    classes: {
        type: JSON,
    },
});
</script>

<template>
    <MainLayout title="Welcome" :canLogin="canLogin" :canRegister="canRegister">
        <main>
            <ProgressSlider :items="news" />
            <FilterForm :guides="guides" :classes="classes" />
        </main>
        <footer class="py-16 text-center text-sm text-black dark:text-white/70">
            Laravel v{{ laravelVersion }} (PHP v{{ phpVersion }})
        </footer>
    </MainLayout>
</template>
