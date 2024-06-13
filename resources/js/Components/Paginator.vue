<script setup>
import { Link } from "@inertiajs/vue3";

defineProps({
    links: {
        type: Array,
    },
    title: {
        type: String,
    },
    classId: {
        type: String,
    },
});
</script>

<template>
    <div :class="`flex justify-center my-5`">
        <Link
            v-for="(link, index) in links"
            v-if="links.length > 3"
            :key="index"
            :href="
                link.url
                    ? `${link.url}&class=${classId ? classId : ''}&title=${
                          title ? title : ''
                      }`
                    : 'null'
            "
            v-html="link.label"
            :class="`border-2 rounded-lg border-red-600 bg-slate-300 hover:bg-slate-400 text-black mr-3 px-2 py-1 row-start-1 ${
                !link.url ? 'hidden' : ''
            }`"
        >
        </Link>
    </div>
</template>
