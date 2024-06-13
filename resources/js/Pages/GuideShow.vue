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
        <main>
            <div
                class="text-gray-200 bg-gray-800 p-5 border-2 border-red-600 rounded-md mb-5"
            >
                <h1 class="text-3xl underline font-bold text-center m-5">
                    {{ guide.title }}
                </h1>
                <div class="flex border-b-2 border-red-600 pb-5">
                    <p class="mx-2">
                        Guide by: {{ guide.user.name }} |
                        {{ guide.ffclass.name }}
                    </p>
                </div>
                <div v-html="guide.content" id="guide"></div>
            </div>
        </main>
    </MainLayout>
</template>

<style lang="postcss" scoped>
#guide {
    overflow: auto;
}
#guide :deep(h1) {
    @apply text-3xl underline text-center pt-4 pb-2;
}

#guide :deep(h2) {
    @apply text-2xl underline pt-4 pb-2;
}

#guide :deep(h3) {
    @apply text-xl underline;
}

#guide :deep(ol) {
    @apply list-decimal my-3;
}

#guide :deep(ul) {
    @apply list-disc my-3;
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
