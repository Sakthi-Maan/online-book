@extends('layouts')

@section('title', 'Welcome to the Book Store')

@section('styles')
<style>
    .book-card {
        transition: transform 0.2s, box-shadow 0.2s;
        border-radius: 12px;
        overflow: hidden;
    }

    .book-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    .book-price-tag {
        background-color: #198754;
        color: #fff;
        padding: 6px 12px;
        border-radius: 8px;
        font-weight: bold;
        font-size: 0.95rem;
    }

    .rating-stars {
        color: #f59f00;
        font-size: 1rem;
    }

    .book-category-badge {
        font-size: 0.75rem;
        background: #e7f1ff;
        color: #0d6efd;
        padding: 4px 10px;
        border-radius: 20px;
        display: inline-block;
        margin-bottom: 8px;
    }
</style>
@endsection

@section('content')
@if(Auth::check())
<div class="d-flex justify-content-end mb-3 align-items-center flex-wrap gap-2">
    <span class="fw-semibold text-dark">👋 Welcome, {{ Auth::user()->name }}</span>

    <a href="{{ route('store.front') }}" class="btn btn-outline-primary btn-sm">🏬 Go to Store</a>

    @if(Auth::user()->role === 'admin')
        <a href="{{ route('home') }}" class="btn btn-outline-dark btn-sm">🛠️ Dashboard</a>
    @endif

    <form action="{{ route('logout') }}" method="POST" class="d-inline">
        @csrf
        <button class="btn btn-outline-danger btn-sm">🚪 Logout</button>
    </form>
</div>
@endif

<div class="container py-5">
    <h2 class="text-center fw-bold mb-5 display-5 text-dark">📚 Discover Our Bookstore</h2>

<form method="GET" action="{{ route('store.front') }}" class="mb-5">
    <div class="row g-3 align-items-end">
        <!-- Search -->
        <div class="col-md-5">
            <label class="form-label fw-semibold">🔍 Search Books</label>
            <input type="text" name="search" value="{{ request('search') }}" class="form-control" placeholder="Enter title or category">
        </div>

        <!-- Filter by Category -->
        <div class="col-md-3">
            <label class="form-label fw-semibold">📂 Filter by Category</label>
            <select name="category" class="form-select">
                <option value="">All Categories</option>
                @foreach($allCategories as $category)
                    <option value="{{ $category }}" {{ request('category') == $category ? 'selected' : '' }}>
                        {{ $category }}
                    </option>
                @endforeach
            </select>
        </div>

        <!-- Sort by -->
        <div class="col-md-2">
            <label class="form-label fw-semibold">↕️ Sort By</label>
            <select name="sort" class="form-select">
                <option value="">Default</option>
                <option value="price_asc" {{ request('sort') == 'price_asc' ? 'selected' : '' }}>Price: Low to High</option>
                <option value="price_desc" {{ request('sort') == 'price_desc' ? 'selected' : '' }}>Price: High to Low</option>
                <option value="rating_desc" {{ request('sort') == 'rating_desc' ? 'selected' : '' }}>Rating</option>
            </select>
        </div>

        <!-- Submit -->
        <div class="col-md-2">
            <button class="btn btn-primary w-100">Apply</button>
        </div>
    </div>
</form>


    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
        @forelse ($books as $book)
        <div class="col">
            <div class="card book-card h-100 shadow-sm border-0">
                <div class="card-body d-flex flex-column">
                    <div class="book-category-badge">{{ $book->book_category }}</div>
                    <h5 class="card-title mb-2 text-dark">{{ Str::limit($book->title, 50) }}</h5>

                    <div class="mb-2">
                        <span class="rating-stars">⭐ {{ $book->star_rating }}/5</span>
                    </div>

                    <div class="mb-3">
                        <span class="book-price-tag">₹{{ number_format($book->price, 2) }}</span>
                    </div>

                    <div class="mt-auto">
                        <a href="{{ route('details', $book->id) }}" class="btn btn-outline-primary mt-auto w-100">
                            🔍 View Details
                        </a>
                    </div>
                </div>
            </div>
        </div>
        @empty
        <div class="col-12 text-center">
            <p class="text-muted">No books available at the moment. Please check back later.</p>
        </div>
        @endforelse
    </div>

    <div class="d-flex justify-content-center mt-5">
        {{ $books->links('pagination::bootstrap-5') }}
    </div>
</div>
@endsection
