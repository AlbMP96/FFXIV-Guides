<script setup>
import { router } from "@inertiajs/vue3";
import { reactive, ref } from "vue";
import { QuillEditor } from "@vueup/vue-quill";
import ImageUploader from "quill-image-uploader";
import BlotFormatter from "quill-blot-formatter";
import MainLayout from "@/Layouts/MainLayout.vue";

const uploaderModule = ref({
    name: "imageUploader",
    module: ImageUploader,
    options: {
        upload: (file) => {
            return new Promise((resolve, reject) => {
                const formData = new FormData();
                formData.append("image", file);

                axios
                    .post("/upload-image", formData)
                    .then((res) => {
                        resolve(res.data);
                    })
                    .catch((err) => {
                        reject("Upload failed");
                        console.error("Error:", err);
                    });
            });
        },
    },
});

const formatterModule = ref({
    name: "blotFormatter",
    module: BlotFormatter,
    options: {},
});

defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
    classes: {
        type: JSON,
    },
    errors: {
        type: Object,
    },
});

const form = reactive({
    title: null,
    class: null,
    guide: null,
});

function submit() {
    router.post(route("postguide"), form);
}
</script>

<template>
    <MainLayout
        title="Create Guide"
        :canLogin="canLogin"
        :canRegister="canRegister"
    >
        <main class="mb-10">
            <div class="flex flex-col justify-center items-center">
                <h1
                    class="text-3xl text-center m-5 underline font-bold text-gray-200"
                >
                    Create your guide
                </h1>
                <form
                    @submit.prevent="submit"
                    class="px-10 flex flex-col items-center justify-center"
                >
                    <div
                        class="grid grid-cols-2 gap-x-2 my-3 text-center justify-items-center mb-5"
                    >
                        <div class="justify-self-end">
                            <label for="title" class="block leading-6 h-1/2"
                                >Title</label
                            >
                            <input
                                id="title"
                                type="text"
                                v-model="form.title"
                                required
                                class="block w-full rounded-md border-0 py-1.5 text-gray-900 ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-red-600 sm:text-sm sm:leading-6"
                            />
                        </div>
                        <div class="justify-self-start">
                            <div class="h-1/2"></div>
                            <select
                                name="ff-class"
                                id="ff-class"
                                v-model="form.class"
                                required
                                class="mx-3 text-black focus:ring-2 focus:ring-inset focus:ring-red-600 rounded-md border-0"
                            >
                                <option value="null" hidden selected>
                                    Select Class
                                </option>
                                <option
                                    v-for="job in classes"
                                    :key="job.id"
                                    :value="job.id"
                                >
                                    {{ job.name }}
                                </option>
                            </select>
                        </div>
                        <div v-if="errors.title" class="text-red-700 text-xl">
                            {{ errors.title }}
                        </div>
                        <div v-if="errors.class" class="text-red-700 text-xl">
                            {{ errors.class }}
                        </div>
                    </div>
                    <div v-if="errors.guide" class="text-red-700 text-xl">
                        {{ errors.guide }}
                    </div>
                    <QuillEditor
                        :modules="[uploaderModule, formatterModule]"
                        toolbar="full"
                        contentType="html"
                        v-model:content="form.guide"
                        class="text-black bg-gray-100 min-h-screen w-11/12"
                    />
                    <input
                        type="submit"
                        value="Create"
                        class="mx-auto my-10 px-5 py-2 rounded-lg text-black bg-red-600 hover:cursor-pointer hover:bg-red-500"
                    />
                </form>
            </div>
        </main>
    </MainLayout>
</template>

<style lang="postcss" scoped>
:deep(.ql-toolbar) {
    @apply w-11/12;
}

:deep(.ql-editor) {
    @apply h-screen;
}
</style>
