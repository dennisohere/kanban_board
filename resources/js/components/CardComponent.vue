<template>
    <div class="card" @click="openCard">
        <h3 class="title">{{thisCard.title}}</h3>

        <modal :name="'card-' + card.id">
            <EditCard @card-modified="onCardModified($event)" :card="thisCard" :column="column"></EditCard>
        </modal>
    </div>
</template>

<script>
import EditCard from "./EditCard";
export default {
    name: "CardComponent",
    components: {EditCard},
    data(){
        return {
            thisCard: null,
        }
    },
    props: {
        card: {
            required: true,
            type: Object
        },
        column: {
            required: true,
            type: Object
        }
    },
    methods: {
        openCard(){
            this.$modal.show('card-' + this.card.id);
        },
        onCardModified(card){
            this.thisCard = card;
            this.$modal.hide('card-' + this.card.id);
        }
    },
    created() {
        this.thisCard = this.card;
    }
}
</script>

<style scoped>

</style>
