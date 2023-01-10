<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @property int id
 * @property int order
 * @property int column_id
 * @property string title
 * @property string description
 * @property \DateTime created_at
 * @property \DateTime updated_at
 * @property \DateTime deleted_at
 *
 * @property-read Column $column
 */
class Card extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['id', 'order', 'title', 'description'];

    public function column(): BelongsTo
    {
        return $this->belongsTo(Column::class, 'column_id');
    }
}
