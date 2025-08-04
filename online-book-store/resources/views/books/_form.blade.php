@php
    $book = $book ?? null;
@endphp

<div class="mb-3">
    <label class="form-label">Title</label>
    <input type="text" name="title" value="{{ old('title', $book->title ?? '') }}" class="form-control" required>
</div>

<div class="mb-3">
    <label class="form-label">Category</label>
    <input type="text" name="book_category" value="{{ old('book_category', $book->book_category ?? '') }}" class="form-control" required>
</div>

<div class="mb-3">
    <label class="form-label">Star Rating</label>
    <input type="number" name="star_rating" step="0.1" max="5" min="0" value="{{ old('star_rating', $book->star_rating ?? '') }}" class="form-control">
</div>

<div class="mb-3">
    <label class="form-label">Price</label>
    <input type="number" name="price" step="0.01" value="{{ old('price', $book->price ?? '') }}" class="form-control" required>
</div>

<div class="mb-3">
    <label class="form-label">Stock Status</label>
    <select name="stock" class="form-select" required>
        <option value="0" {{ (old('stock', $book->stock ?? '') == 0) ? 'selected' : '' }}>Out of Stock</option>
        <option value="1" {{ (old('stock', $book->stock ?? '') == 1) ? 'selected' : '' }}>In Stock</option>
    </select>
</div>

<div class="mb-3">
    <label class="form-label">Quantity</label>
    <input type="number" name="quantity" value="{{ old('quantity', $book->quantity ?? '') }}" class="form-control" required>
</div>
