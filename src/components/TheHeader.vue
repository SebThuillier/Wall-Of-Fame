<template>
    <header>
        <div class="image">
        </div>
        <h1> Wall of Fame </h1>
        <div class="image">
        </div>
    </header>
</template>

<style scoped>


header {
  width: 100%;
  height: 5rem;
  background: #536976;  /* fallback for old browsers */
  background: -webkit-linear-gradient(to right, #292E49, #536976);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #292E49, #536976); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  display: flex;
  justify-content: space-around;
  align-items: center;
  border-radius: 25px;

}

header h1 {
  color: white;
  margin: 0;
}

.image{
    width: 200px;
    height: 90%;
    background-image: url("https://d24wuq6o951i2g.cloudfront.net/img/events/id/299/2992737/assets/c.H.5f.97a.dfinity-logo-mk2-black-large-2-.png") ;
    background-size:contain;
    background-repeat: no-repeat;
}


</style>