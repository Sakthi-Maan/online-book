@extends('layouts')

@section('title', $book->title . ' - Book Details')

@section('styles')
<style>
    body {
        background: #eef2f7;
        font-family: 'Segoe UI', sans-serif;
    }

    .book-wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 50px 15px;
        min-height: 100vh;
    }

    .book-card {
        background: #fff;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        width: 100%;
        max-width: 500px;
        animation: fadeIn 0.5s ease-in-out;
        transition: transform 0.3s ease;
    }

    .book-card:hover {
        transform: translateY(-5px);
    }

    .book-card-header {
        background: linear-gradient(135deg, #4a90e2, #007aff);
        color: white;
        padding: 25px;
        font-size: 1.8rem;
        font-weight: 600;
        text-align: center;
    }

    .book-card-body {
        padding: 25px 30px;
        font-size: 1rem;
        color: #333;
    }

    .book-card-body p {
        margin-bottom: 16px;
        line-height: 1.6;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .book-card-body p strong {
        width: 130px;
        color: #555;
    }

    .book-card-footer {
        padding: 18px 30px;
        background-color: #f8f9fa;
        text-align: right;
        border-top: 1px solid #dee2e6;
    }

    .book-card-footer a.btn {
        font-size: 0.9rem;
        padding: 10px 18px;
        border-radius: 10px;
        transition: background 0.3s ease;
    }

    .book-card-footer a.btn:hover {
        background-color: #0056b3;
        color: white;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @media (max-width: 576px) {
        .book-card {
            max-width: 100%;
            margin: 10px;
        }

        .book-card-header {
            font-size: 1.4rem;
            padding: 20px;
        }

        .book-card-footer {
            text-align: center;
        }

        .book-card-body p strong {
            width: auto;
        }
    }
</style>
@endsection

@section('content')
<div class="container">
    <div class="book-wrapper">
        <div class="book-card">
            <div class="book-card-header">
                📘 {{ $book->title }}
            </div>
            <div class="book-card-body">
                <p><strong>📚 Category:</strong> {{ $book->book_category }}</p>
                <p><strong>⭐ Rating:</strong> {{ $book->star_rating }}/5</p>
                <p><strong>💰 Price:</strong> ₹{{ number_format($book->price, 2) }}</p>
                <p><strong>📦 Stock:</strong> {{ $book->stock }}</p>
                <p><strong>🔢 Quantity:</strong> {{ $book->quantity }}</p>
                <p><strong>📅 Created:</strong> {{ $book->created_at->format('d M Y, H:i') }}</p>
                <p><strong>🔄 Updated:</strong> {{ $book->updated_at->format('d M Y, H:i') }}</p>
            </div>
            <div class="book-card-footer">
                @auth
                    @if (Auth::user()->role === 'admin')
                        <a href="{{ route('home') }}" class="btn btn-primary">⬅️ Back to Dashboard</a>
                         <a href="{{ route('store.front') }}" class="btn btn-primary">⬅️ Back to Store</a>
                    @else
                        <a href="{{ route('store.front') }}" class="btn btn-primary">⬅️ Back to Store</a>
                    @endif
                @else
                    <a href="{{ route('login.form') }}" class="btn btn-secondary">🔐 Login</a>
                @endauth
            </div>
        </div>
    </div>
</div>
@endsection
