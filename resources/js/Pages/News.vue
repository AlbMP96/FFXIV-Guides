<script setup>
import MainLayout from "@/Layouts/MainLayout.vue";

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
    <MainLayout :canLogin="canLogin" :canRegister="canRegister" title="News">
        <main>
            <h1 class="text-3xl underline font-bold text-center m-5">
                Latest News
            </h1>
            <div
                v-for="item in news"
                :key="item.id"
                class="text-center text-white border-4 border-red-500 rounded p-3.5 my-3.5 bg-gray-800"
            >
                <p class="text-2xl underline mb-2 decoration-2">
                    <a :href="item.url" target="_blank">
                        {{ item.title }}
                    </a>
                </p>
                <img class="mx-auto" :src="item.image" :alt="item.title" />
                <p>{{ item.description }}</p>
            </div>
        </main>
    </MainLayout>
</template>
