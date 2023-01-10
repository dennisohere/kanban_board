<?php

namespace App\Services;

use App\Models\Card;
use App\Models\Column;
use Illuminate\Database\Eloquent\Collection;

class ColumnService
{

    public function getAllColumns(): Collection|array
    {
        return Column::query()->with(['cards' => function($cards_query){
            return $cards_query->orderBy('order')
                ->latest();
        }])
            ->get();
    }

    /**
     * @param $column_id
     * @param array $sorted_cards [{card: 1, pos: 1}, ...]
     * @return Column
     */
    public function persistSortedCards($column_id, array $sorted_cards)
    {
        foreach ($sorted_cards as $sorted_card){
            $card_id = $sorted_card['card'];
            $position = $sorted_card['pos'];

            /** @var Card $card */
            $card = Card::query()->find($card_id);

            $card->order = $position;
            $card->column_id = $column_id;

            $card->save();
        }

        /** @var Column $column */
        $column = Column::query()->with('cards')->find($column_id);

        return  $column;
    }

    public function saveNewColumn(mixed $payload): Column
    {
        $column = new Column();
        $column->title = $payload['title'];
        $column->order = Column::query()->max('order') + 1;
        $column->save();

        $column->load('cards');

        return $column;
    }
}
