<script setup>
import {Head, Link} from '@inertiajs/vue3';
import Header from '../Components/Header.vue';

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
    <Head title="Create Guide" />
        <div class="bg-gray-50 text-black/50 dark:bg-black dark:text-white/50">
            <div
                class="relative min-h-screen flex flex-col items-center justify-center selection:bg-[#FF2D20] selection:text-white"
                >
                <div class="relative w-full max-w-2xl px-6 lg:max-w-7xl">
                    <Header :canLogin="canLogin" :canRegister="canRegister"/>
                    <main class="mb-10">
                        <div class="flex flex-col justify-center items-center">
                            <h1 class="text-3xl text-center m-5 underline font-bold">Create your guide</h1>
                            <div class="my-3 text-center">
                                <label for="title">Title: </label>
                                <input id="title" type="text" class="bg-gray-100 text-black"/>

                                <select name="ff-class" id="ff-class" class="mx-3 text-black">
                                    <option value="default" hidden selected>Select Class</option>
                                </select>
                            </div>
                            <QuillEditor toolbar="essential" class="text-black bg-gray-100 min-h-screen w-screen"/>
                            <input type="submit" value="Create" class="justify-center my-10 px-5 py-2 rounded-lg text-black bg-red-600 hover:cursor-pointer hover:bg-red-500">
                        </div>
                    </main>
               </div>
            </div>
        </div>
</template>
