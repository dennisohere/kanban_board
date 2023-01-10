<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Collection;

/**
 * @property int id
 * @property int order
 * @property string title
 * @property \DateTime created_at
 * @property \DateTime updated_at
 * @property \DateTime deleted_at
 *
 * @property-read Card[]|Collection $cards
 */
class Column extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['id', 'order', 'title'];

    public function cards(): HasMany
    {
        return $this->hasMany(Card::class, 'column_id');
    }
}
