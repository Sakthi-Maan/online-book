<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class BookController extends Controller
{
    /**
     * Show homepage with paginated books + weather.
     */
    public function home()
    {
        if (!Auth::check() || Auth::user()->role !== 'admin') {
            abort(403, 'Unauthorized action. Admins only.');
        }

        $city = 'Chennai';
        $books = Book::orderByDesc('id')->paginate(12);
        $users = User::paginate(10);
        $weather = $this->getWeatherData($city);

        return view('home', compact('books', 'weather', 'city', 'users'));
    }

    /**
     * Get weather from API.
     */
    private function getWeatherData(string $city): ?array
    {
        $apiKey = config('services.weatherapi.key');
        if (!$apiKey) return null;

        try {
            $response = Http::timeout(5)->get("http://api.weatherapi.com/v1/current.json", [
                'key' => $apiKey,
                'q' => $city,
            ]);

            return $response->successful() ? $response->json() : null;
        } catch (\Exception $e) {
            Log::error("Weather fetch failed: " . $e->getMessage());
            return null;
        }
    }

    /**
     * Show book details.
     */
    public function detail(Book $book)
    {
        return view('details', compact('book'));
    }

    /**
     * Show book store (landing page).
     */
    public function storeFront(Request $request)
    {
        $query = Book::query();

        if ($request->filled('search')) {
            $query->where('title', 'like', "%{$request->search}%")
                  ->orWhere('book_category', 'like', "%{$request->search}%");
        }

        if ($request->filled('category')) {
            $query->where('book_category', $request->category);
        }

        switch ($request->sort) {
            case 'price_asc':
                $query->orderBy('price');
                break;
            case 'price_desc':
                $query->orderByDesc('price');
                break;
            case 'rating_desc':
                $query->orderByDesc('star_rating');
                break;
        }

        $books = $query->paginate(12)->withQueryString();
        $allCategories = Book::select('book_category')->distinct()->pluck('book_category');

        return view('landing', compact('books', 'allCategories'));
    }

    /**
     * Store a newly created book.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'title'         => 'required|string|max:255',
            'book_category' => 'required|string|max:255',
            'star_rating'   => 'nullable|numeric|min:0.1|max:5',
            'price'         => 'required|numeric|min:0',
            'stock'         => 'required|string|max:255',
            'quantity'      => 'required|integer|min:0',
        ]);

        try {
            Book::create($data);
            return redirect()->route('home')->with('success', 'Book added successfully.');
        } catch (\Exception $e) {
            Log::error("Create book failed: " . $e->getMessage());
            return back()->withErrors(['error' => 'Failed to add book.'])->withInput();
        }
    }

    /**
     * Update a book.
     */
    public function update(Request $request, Book $book)
    {
        $data = $request->validate([
            'title'         => 'required|string|max:255',
            'book_category' => 'required|string|max:255',
            'star_rating'   => 'nullable|numeric|min:0.1|max:5',
            'price'         => 'required|numeric|min:0',
            'stock'         => 'required|string|max:255',
            'quantity'      => 'required|integer|min:0',
        ]);

        try {
            $book->update($data);
            return redirect()->route('home')->with('success', 'Book updated successfully.');
        } catch (\Exception $e) {
            Log::error("Update book failed: " . $e->getMessage());
            return back()->withErrors(['error' => 'Failed to update book.'])->withInput();
        }
    }

    /**
     * Delete a book.
     */
    public function destroy(Book $book)
    {
        try {
            $book->delete();
            return redirect()->route('home')->with('success', 'Book deleted successfully.');
        } catch (\Exception $e) {
            Log::error("Delete book failed: " . $e->getMessage());
            return redirect()->route('home')->withErrors(['error' => 'Failed to delete book.']);
        }
    }
}