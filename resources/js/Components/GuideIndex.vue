<script setup>
import { Link } from "@inertiajs/vue3";
defineProps(["guide"]);
</script>

<template>
    <div class="border-gray border-solid border-2 my-2 p-2 text-center">
        <Link :href="`/guide/${guide.id}`"
            ><h1>{{ guide.title }}</h1></Link
        >
        <p>{{ guide.user.name }} {{ guide.ffclass.name }}</p>
    </div>
</template>
