<script setup>
import { ref, onMounted, onUnmounted, nextTick, watch } from "vue";
import { TransitionRoot } from "@headlessui/vue";

const duration = 5000;
const itemsRef = (ref < HTMLCanvasElement) | (null > null);
const frame = ref(0);
const firstFrameTime = ref(performance.now());
const active = ref(0);
const progress = ref(0);

const props = defineProps({
    items: Array,
});

const items = props.items;

const startAnimation = () => {
    firstFrameTime.value = performance.now();
    frame.value = requestAnimationFrame(animate);
};

const animate = (now) => {
    let timeDifference = now - firstFrameTime.value;
    let timeFraction = Math.max(0, timeDifference) / duration;
    if (timeFraction <= 1) {
        progress.value = timeFraction * 100;
        frame.value = requestAnimationFrame(animate);
    } else {
        timeFraction = 1;
        progress.value = 0;
        active.value = (active.value + 1) % items.length;
    }
};

const heightFix = async () => {
    await nextTick();
    if (itemsRef.value && itemsRef.value.parentElement)
        itemsRef.value.parentElement.style.height = `${itemsRef.value.clientHeight}px`;
};

onMounted(() => startAnimation());

onUnmounted(() => cancelAnimationFrame(frame.value));

watch(active, () => {
    cancelAnimationFrame(frame.value);
    startAnimation();
});
</script>

<template>
    <div class="w-full max-w-5xl mx-auto text-center mb-4">
        <!-- Item image -->
        <div class="transition-all duration-150 delay-300 ease-in-out">
            <div class="relative flex flex-col" ref="itemsRef">
                <template :key="index" v-for="(item, index) in items">
                    <TransitionRoot
                        :show="active === index"
                        enter="transition ease-in-out duration-500 delay-200 order-first"
                        enterFrom="opacity-0 scale-105"
                        enterTo="opacity-100 scale-100"
                        leave="transition ease-in-out duration-300 absolute"
                        leaveFrom="opacity-100 scale-100"
                        leaveTo="opacity-0 scale-95"
                        @before-enter="heightFix()"
                    >
                        <a :href="item.url" target="_blank">
                            <img
                                class="rounded-xl"
                                :src="item.image"
                                width="1024"
                                height="576"
                                :alt="item.title"
                            />
                            <p class="text-sm sm:text-lg">{{ item.title }}</p>
                        </a>
                    </TransitionRoot>
                </template>
            </div>
        </div>
        <!-- Buttons -->
        <div
            class="max-w-xs sm:max-w-sm md:max-w-3xl mx-auto grid grid-cols-5 gap-2 mt-4"
        >
            <template :key="index" v-for="(item, index) in items">
                <button
                    class="p-2 rounded focus:outline-none focus-visible:ring focus-visible:ring-indigo-300 group"
                    @click="active = index"
                >
                    <span
                        class="text-center flex flex-col items-center"
                        :class="
                            active === index
                                ? ''
                                : 'opacity-50 group-hover:opacity-100 group-focus:opacity-100 transition-opacity'
                        "
                    >
                        <span
                            class="block relative w-full bg-slate-200 h-1 rounded-full"
                            role="progressbar"
                            :aria-valuenow="active === index ? progress : 0"
                            aria-valuemin="0"
                            aria-valuemax="100"
                        >
                            <span
                                class="absolute inset-0 bg-red-500 rounded-[inherit]"
                                :style="`${
                                    active === index
                                        ? `width: ${progress}%`
                                        : 'width: 0%'
                                }`"
                            ></span>
                        </span>
                    </span>
                </button>
            </template>
        </div>
    </div>
</template>
