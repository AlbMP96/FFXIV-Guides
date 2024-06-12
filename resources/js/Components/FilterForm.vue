<script setup>
import { router } from "@inertiajs/vue3";
import { reactive } from "vue";
import GuideIndex from "../Components/GuideIndex.vue";
import Paginator from "../Components/Paginator.vue";

defineProps({
    guides: {
        type: JSON,
    },
    classes: {
        type: JSON,
    },
});

const form = reactive({
    title: null,
    class: null,
});

function submit() {
    router.post("/", form);
}

router.reload({ only: ["guides"] });
</script>

<template>
    <div class="py-3 my-5">
        <h1 class="text-3xl underline text-center text-gray-200 my-5">
            Guides
        </h1>
        <form @submit.prevent="submit">
            <input
                id="title"
                type="text"
                v-model="form.title"
                class="block w-full rounded-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-red-600 sm:text-sm sm:leading-6"
            />
            <select
                name="ff-class"
                id="ff-class"
                v-model="form.class"
                class="mx-3 text-black focus:ring-2 focus:ring-inset focus:ring-red-600 rounded-md border-0"
            >
                <option value="undefined" hidden selected>Select Class</option>
                <option v-for="job in classes" :key="job.id" :value="job.id">
                    {{ job.name }}
                </option>
            </select>
            <input
                type="submit"
                value="Filter"
                class="mx-auto my-10 px-5 py-2 rounded-lg text-black bg-red-600 hover:cursor-pointer hover:bg-red-500"
            />
        </form>
        <GuideIndex v-for="post in guides.data" :guide="post" :key="post.id" />
        <Paginator :links="guides.links" />
    </div>
</template>
