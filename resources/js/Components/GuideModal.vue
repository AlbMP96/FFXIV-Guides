<script setup>
    defineProps(['guide']);
</script>

<template>
    <div class="modal bg-gray-400 overflow-scroll fixed z-50 inset-0 my-auto mx-auto border-4 border-red-600 p-2 rounded-lg w-10/12 h-5/6">
        <h1>{{ guide.title }} {{ guide.user.name }} {{ guide.ffclass.name }}</h1>
        <div v-html="guide.content">

        </div>
    </div>
</template>

<style scoped>
    .modal :deep(img) {
        margin-left: auto;
        margin-right: auto;
    }

    .modal :deep(*) {
        word-wrap: break-word;
    }
</style>
