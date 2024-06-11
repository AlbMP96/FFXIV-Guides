<script setup>
import { Link } from "@inertiajs/vue3";
defineProps(["guide"]);
</script>

<template>
    <div
        class="border-red-600 border-solid border-2 bg-gray-800 flex flex-1 flex-col mx-auto my-2 p-2 text-center text-gray-200 sm:w-full md:w-1/2 rounded"
    >
        <Link :href="`/guide/${guide.id}`"
            ><h1 class="underline hover:text-gray-400">
                {{ guide.title }}
            </h1></Link
        >
        <p>Guide by: {{ guide.user.name }} | {{ guide.ffclass.name }}</p>
    </div>
</template>
