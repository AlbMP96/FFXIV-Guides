<script setup>
import MainLayout from "@/Layouts/MainLayout.vue";

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
    guide: {
        type: JSON,
    },
});
</script>

<template>
    <MainLayout
        :title="guide.title"
        :canLogin="canLogin"
        :canRegister="canRegister"
    >
        <main
            class="text-gray-200 bg-gray-800 p-5 border-2 border-red-600 rounded-md"
        >
            <h1 class="text-3xl underline font-bold text-center m-5">
                {{ guide.title }}
            </h1>
            <div class="grid grid-cols-2 border-b-2 border-red-600 pb-5">
                <span class="mx-2">Guide by: {{ guide.user.name }}</span>
                <span class="justify-self-end">{{ guide.ffclass.name }}</span>
            </div>
            <div v-html="guide.content" id="guide" class="pb-5"></div>
        </main>
    </MainLayout>
</template>

<style lang="postcss" scoped>
#guide :deep(h1) {
    @apply text-3xl underline text-center pt-4 pb-2;
}

#guide :deep(h2) {
    @apply text-2xl underline pt-4 pb-2;
}

#guide :deep(h3) {
    @apply text-xl underline;
}

#guide :deep(img) {
    @apply mx-auto py-3;
}

#guide :deep(ol) {
    @apply list-decimal;
}

#guide :deep(ul) {
    @apply list-disc;
}

#guide :deep(li) {
    @apply mx-5;
}

#guide :deep(p) {
    @apply my-2;
}

#guide :deep(a) {
    @apply underline hover:text-gray-400;
}
</style>
