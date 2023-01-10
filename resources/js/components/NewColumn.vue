<template>
    <div class="column-modal">
        <h1>Add new column...</h1>

        <div class="form">
            <div class="form-control">
                <label for="title">Title</label>
                <input class="input" id="title" v-model="title" type="text" name="title"/>
            </div>
            <div class="form-control">
                <button class="primary" @click="save">Submit</button>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "NewColumn",
    data(){
        return {
            title: '',
        }
    },
    methods: {
        async save(){
            const {data} = await axios.post('api/columns', {
                'title': this.title,
            });

            console.log('card saved', data);

            if(data.id) {
                this.reset();
                this.$emit('column-added', data);

                alert('Column saved!');
            }
        },
        reset(){
            this.title = '';
        }
    },
}
</script>

<style lang="scss" scoped>
    div.column-modal {
        padding: 25px;

        h1 {
            margin-bottom: 21px;
        }
    }
</style>
