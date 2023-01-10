<template>
    <div class="card-modal">
        <h1 v-if="card">{{card.title}}</h1>
        <h1 v-else>Add new card...</h1>

        <div class="form">
            <div class="form-control">
                <label for="title">Title</label>
                <input class="input" id="title" v-model="title" type="text" name="title"/>
            </div>
            <div class="form-control">
                <label for="description">Description</label>
                <textarea class="input" id="description" v-model="description" rows="3"></textarea>
            </div>
            <div class="form-control">
                <button class="primary" @click="save">Submit</button>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "EditCard",
    props: {
        card: {
            type: Object
        },
        column: {
            type: Object,
            required: true,
        }
    },
    data(){
        return {
            title: '',
            description: '',
            id: null,
        }
    },
    methods: {
        async save(){
            const {data} = await axios.post('api/cards', {
                'column_id': this.column.id,
                'card_id': this.card ? this.card.id : null,
                'title': this.title,
                'description': this.description,
            });

            console.log('card saved', data);

            if(data.id) {
                this.reset();
                if(!this.card){
                    this.$emit('card-added', data);
                } else {
                    this.$emit('card-modified', data);
                }

                alert('Card saved!');
                this.$modal.hideAll();
            }
        },
        reset(){
            this.title = '';
            this.description = '';
            this.id = null;
        }
    },
    created() {
        if(this.card){
            this.id = this.card.id;
            this.title = this.card.title;
            this.description = this.card.description;
        }
    }
}
</script>

<style lang="scss" scoped>
    div.card-modal {
        padding: 25px;

        h1 {
            margin-bottom: 21px;
        }
    }
</style>
