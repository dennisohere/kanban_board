<template>

    <div class="column">
        <div class="header">
            <h3 class="title">{{column.title}}</h3>
            <div class="controls">
                <button @click="openCard" class="card-control add">+ Add card</button>
                <button @click="deleteColumn" class="card-control delete">x</button>
            </div>
            <modal :name="'column-' + column.id">
                <EditCard @card-added="onCardAdded($event)" :column="column"></EditCard>
            </modal>
        </div>

        <div class="cards-wrapper">
            <draggable class="card-list" v-model="cards" @start="drag=true" @end="drag=false" draggable=".card"
                       @change="handleChange" group="board" empty-insert-threshold="50">
                <CardComponent v-for="card in cards" :card="card" :key="card.id" :column="column"></CardComponent>
                <div class="card empty" v-if="cards.length === 0">
                    Drop card here...
                </div>
            </draggable>
        </div>
    </div>

</template>

<script>
import CardComponent from "./CardComponent";
import draggable from 'vuedraggable';
import EditCard from "./EditCard";

export default {
    name: "ColumnComponent",
    components: {EditCard, CardComponent, draggable},
    props: {
        column : {
            required: true,
            type: Object
        }
    },
    data: () => {
        return {
            cards: [],
        }
    },
    methods: {
        handleChange(event){
            const sorted = this.cards.map((c, index) => {
                return {'card' : c.id, 'pos' : index + 1};
            });

            console.log('card moved', event, sorted);

            this.persistChanges(sorted);
        },
        async persistChanges(sortedCards){

            const {data} = await axios.post('api/columns/sort-cards', {
                'column': this.column.id,
                'cards': sortedCards,
            });

            console.log('persisted changes', data);
        },
        async deleteColumn(){
            if(!confirm('Are you sure?')) return ;

            this.$emit('column-deleted', this.column);

            const {data} = await axios.delete('api/columns/' + this.column.id);

            console.log('column deletion persisted', data)
        },
        openCard(){
            this.$modal.show('column-' + this.column.id);
        },
        onCardAdded(card){
            this.cards.push(card);
            this.$modal.hide('column-' + this.column.id);
        }
    },
    created() {
        this.cards = this.column.cards;
    },
}
</script>

<style lang="scss" >
    div.card.empty {
        min-height: 50px;
        content: "Drop card here...";
        border: unset;
        font-size: 14px;
        text-align: center;

        &:hover {
            border: unset;
        }
    }
</style>
