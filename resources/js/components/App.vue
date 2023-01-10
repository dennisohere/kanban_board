<template>
    <div class="board-container">
        <div class="header">
            <h1 class="title">Kanban Board</h1>
            <div class="controls">
                <button @click="openNewColumnModal" class="small primary">+ Add new column</button>
                <a href="/data/export" class="small button" target="_blank">Export DB</a>
            </div>
            <modal name="new-column">
                <NewColumn @column-added="onColumnAdded($event)"></NewColumn>
            </modal>
        </div>
        <div class="board">
            <ColumnComponent v-for="column in columns"
                             @column-deleted="handleDeletedColumn($event)"
                             :key="column.id" :column="column"></ColumnComponent>
        </div>
    </div>
</template>

<script>
import ColumnComponent from "./ColumnComponent";
import NewColumn from "./NewColumn";
export default {
    name: "App",
    components: {NewColumn, ColumnComponent},
    data: () => {
        return {
            columns: [],
        }
    },
    methods: {
        async getColumns(){
            const {data} = await axios.get('api/columns');
            console.log('columns', data);
            this.columns = data;
        },
        handleDeletedColumn(column){
            console.log('deleted column', column);
            this.columns = this.columns.filter((col) => col.id !== column.id);
        },
        openNewColumnModal(){
            this.$modal.show('new-column');
        },
        onColumnAdded(column){
            this.columns.push(column);
            this.$modal.hide('new-column');
        },
        exportDb(){
            axios.post('api/data/export');
        }
    },
    created() {
        this.getColumns();
    }
}
</script>

<style lang="scss" scoped>
div.board-container {
    background-image: linear-gradient(white, #eae9e9);
    padding: 1.3em;
    height: 100%;

    div.header {
        display: flex;
        justify-content: space-between;

        h1 {
            font-size: 1.4em;
            color: teal;
        }
    }

    div.board {
        display: flex;
        gap: 25px;
        overflow: auto;
        margin: 10px 0;
        height: calc(100% - 40px);
    }
}
</style>
