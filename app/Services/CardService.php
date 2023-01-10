<?php

namespace App\Services;

use App\Models\Card;
use App\Models\Column;

class CardService
{

    public function saveCard(mixed $payload): Card
    {
        $card = new Card();

        if($card_id = $payload['card_id']){
            $card = Card::query()->find($card_id);
        } else {
            $max_order = Card::query()->where('column_id', $payload['column_id'])
                ->max('order');
            $card->order = $max_order + 1;
        }

        $card->column_id = $payload['column_id'];
        $card->title = $payload['title'];
        $card->description = $payload['description'];
        $card->save();

        return $card;
    }

    public function listCards($access_token)
    {
        if($access_token != env('ACCESS_TOKEN', 'ABC123')) {
            return [];
        }

        $query = Card::query();

        $status = request('status');
        $query = match ($status) {
            '0' => $query->onlyTrashed(),
            '1' => $query->withoutTrashed(),
            default => $query->withTrashed(),
        };

        if($date = request('date')){
            $query = $query->where('created_at', $date);
        }

        return $query->get();
    }
}
