<script setup>
import { Link } from "@inertiajs/vue3";

defineProps(["guide"]);
</script>

<template>
    <div
        class="border-red-600 border-solid border-2 bg-gray-800 flex flex-1 flex-col mx-auto my-2 p-2 text-center text-gray-200 w-full lg:w-1/2 rounded"
    >
        <h1 class="text-base sm:text-xl">
            <Link
                class="underline hover:text-gray-400"
                :href="route('showguide', guide.id)"
            >
                {{ guide.title }}
            </Link>
        </h1>
        <div class="flex justify-between text-sm sm:text-base">
            <p class="pt-1 sm:pt-2 me-3">Guide by: {{ guide.user.name }}</p>
            <div class="flex">
                <p class="pt-1 sm:pt-2">{{ guide.ffclass.name }}</p>
                <img
                    :class="`h-6 sm:h-12 border-2 border-yellow-300 rounded-md ms-2 ${
                        guide.ffclass.role == 'Tank'
                            ? 'bg-blue-600'
                            : guide.ffclass.role == 'DPS'
                            ? 'bg-red-600'
                            : 'bg-green-700'
                    }`"
                    :src="`/assets/job-icons/${guide.ffclass.icon}`"
                    alt=""
                />
            </div>
        </div>
    </div>
</template>
