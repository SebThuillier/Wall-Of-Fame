<template>
    <div class="container">
    <button @click="setSelectedTab(1)"> Read </button>
    <button @click="setSelectedTab(2)"> Post </button>
    <button @click="setSelectedTab(3)"> About </button>
    </div>
</template>
    

<script>


export default {
    methods: {
        setSelectedTab(number) {
            
            this.$emit('changeTab', number);
        },
        addMessage() {
            console.log("It works!");
        }
    }
}
</script> 

<style scoped>

base-card {
    display: flex;
    justify-content: space-around;
}


</style>