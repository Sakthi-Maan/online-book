<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
 protected $fillable = [
        'title', 'book_category', 'star_rating', 'price', 'stock', 'quantity'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
