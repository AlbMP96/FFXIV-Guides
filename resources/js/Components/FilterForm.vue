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
    title: {
        type: String,
    },
    classId: {
        type: String,
    },
});

const form = reactive({
    title: null,
    class: null,
});

function submit() {
    router.get("/", form);
}
</script>

<template>
    <div class="py-3 my-5">
        <h1 class="text-3xl underline text-center text-gray-200 my-5">
            Guides
        </h1>
        <form @submit.prevent="submit" class="px-10 text-center">
            <div class="flex flex-col sm:flex-row justify-center">
                <div class="justify-self-end m-5">
                    <label for="title" class="block leading-6 h-1/2 text-center"
                        >Title</label
                    >
                    <input
                        id="title"
                        type="text"
                        v-model="form.title"
                        class="rounded-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-red-600 sm:text-sm sm:leading-6"
                    />
                </div>
                <select
                    name="ff-class"
                    id="ff-class"
                    v-model="form.class"
                    class="m-4 h-1/2 self-center sm:self-end text-black focus:ring-2 focus:ring-inset focus:ring-red-600 rounded-md border-0"
                >
                    <option value="null" selected>All</option>
                    <option
                        v-for="job in classes"
                        :key="job.id"
                        :value="job.id"
                    >
                        {{ job.name }}
                    </option>
                </select>
            </div>
            <input
                type="submit"
                value="Filter"
                class="mx-auto m-3 px-5 py-2 rounded-lg text-black bg-red-600 hover:cursor-pointer hover:bg-red-500"
            />
        </form>
        <GuideIndex v-for="post in guides.data" :guide="post" :key="post.id" />
        <Paginator :links="guides.links" :title="title" :class-id="classId" />
    </div>
</template>
