<template>
    <base-card>
        <header>
        <h3> {{ date }} </h3>
        </header>
            <p> {{ message }} </p>
        <footer>
            <p> {{name}} </p>
            <button> Like </button>
            <p> {{likes }} </p>
        </footer>
    </base-card>
</template>
<script>
import BaseCard from './BaseCard.vue'

export default {
    props: ['date','message','name','likes'],
    components: { 
        BaseCard 
        },
    import:{
        BaseCard
    }
}
</script>

<style scoped>

footer {
    display: flex;
    justify-content: space-between;
}

button {
    transform: scale(0.75);
    padding: 0px 30px;
}
</style>