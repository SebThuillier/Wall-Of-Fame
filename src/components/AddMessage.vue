<template>
    <base-card>
          <form>
            <div class="form-control">
                <label for="name"> Name </label>
                <input id="name" name="name" type="text" ref="nameInput"/>
            </div>
            <div class="form-control">
                <label for="message"> Write your message </label>
                <textarea id="message" name="message" placeholder="Limited to 200 characters" rows="3" ref="contentInput"/>
            </div>
            </form>
            <button @click="submitMessage"> Submit </button>
    </base-card>
</template>



<script>

export default {
    inject:['addMessage'],
    methods: {
        submitMessage() {
            const enteredName = this.$refs.nameInput.value;
            const enteredContent = this.$refs.contentInput.value;
            
            this.addMessage(enteredName,enteredContent);
        }
    }
}
</script>
<style  scoped>
label {
  font-weight: bold;
  display: block;
  margin-bottom: 0.5rem;
}

input,
textarea {
  display: block;
  width: 100%;
  font: inherit;
  border: 1px solid #ccc;
  
}

input:focus,
textarea:focus {
  outline: none;
  border-color: #3a0061;
  background-color: #f7ebff;
}

.form-control {
  margin: 1rem 0;
}
</style>