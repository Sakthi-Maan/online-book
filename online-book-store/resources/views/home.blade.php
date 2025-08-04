@extends('layouts')

@section('title', 'Dashboard - Online Book Store')

@section('styles')
<style>
    .weather-ticker {
        background-color: #0d6efd;
        color: white;
        overflow: hidden;
        white-space: nowrap;
        padding: 10px 0;
    }

    .weather-ticker span {
        display: inline-block;
        padding-left: 100%;
        animation: ticker 20s linear infinite;
        font-size: 1rem;
    }

    @keyframes ticker {
        0% { transform: translateX(0); }
        100% { transform: translateX(-100%); }
    }
</style>
@endsection
<!-- @if(Auth::check())
    <p>Logged in as: {{ Auth::user()->name }} ({{ Auth::user()->role }})</p>
@else
    <p>Not logged in</p>
@endif -->
@section('content')
<!-- Weather -->
<div class="weather-ticker">
    <span id="weatherData">🌤️ Loading live weather...</span>
</div>

<div class="container mt-5 mb-5">
    {{-- Alerts --}}
    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show">
            {{ session('success') }}
            <button class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    @endif

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    {{-- Page Header --}}
 @if(Auth::check())
<div class="d-flex justify-content-end mb-3">
    <span class="me-3 fw-semibold text-dark">👋 Welcome, {{ Auth::user()->name }}</span>
    <a href="{{ route('store.front') }}" class="btn btn-outline-primary btn-sm me-2">🏬 Go to Store</a>
    <form action="{{ route('logout') }}" method="POST">
        @csrf
        <button class="btn btn-outline-danger btn-sm">🚪 Logout</button>
    </form>
</div>
@endif

<div class="text-center mb-4">
    <h1 class="fw-bold">📊 Admin Dashboard</h1>
    <p class="text-muted">Manage Users, Books & Monitor Live Weather</p>
</div>


    <!-- USERS SECTION FIRST -->
    <div class="card shadow-sm mb-5">
        <div class="card-header bg-dark text-white">
            <h5 class="mb-0">👥 Manage Users</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="usersTable" class="table table-bordered table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Created At</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $index => $user)
                        <tr>
                            <td>{{ $users->firstItem() + $index }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>{{ $user->created_at->format('Y-m-d') }}</td>
                            <td>
                         

                            <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editUserModal{{ $user->id }}">Edit</button>
                                <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteUserModal{{ $user->id }}">Delete</button>
                           
                            </td>
                        </tr>

                        <!-- Edit User Modal -->
                        <div class="modal fade" id="editUserModal{{ $user->id }}" tabindex="-1">
                            <div class="modal-dialog">
                                <form method="POST" action="{{ route('admin.users.update', $user) }}">
                                    @csrf @method('PUT')
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Edit User</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
                                            <input name="name" value="{{ $user->name }}" class="form-control mb-2" required>
                                            <input name="email" value="{{ $user->email }}" type="email" class="form-control mb-2" required>
                                        <select name="role" class="form-select mb-2" required>
                        <option value="user" {{ $user->role === 'user' ? 'selected' : '' }}>User</option>
                        <option value="admin" {{ $user->role === 'admin' ? 'selected' : '' }}>Admin</option>
                    </select>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-warning">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!-- Delete User Modal -->
                        <div class="modal fade" id="deleteUserModal{{ $user->id }}" tabindex="-1">
                            <div class="modal-dialog modal-dialog-centered">
                                <form method="POST" action="{{ route('admin.users.destroy', $user) }}">
                                    @csrf @method('DELETE')
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Confirm Delete</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete <strong>{{ $user->name }}</strong>?
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-danger">Delete</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-center mt-3">
                {{ $users->onEachSide(1)->links('pagination::bootstrap-5') }}
            </div>
        </div>
    </div>

    <!-- BOOKS SECTION -->
    <div class="d-flex justify-content-between align-items-center mb-2">
        <h4 class="mb-0">📚 Manage Books</h4>
        <button class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#createBookModal">➕ Add Book</button>
    </div>

    <div class="card shadow-sm mb-5">
        <div class="card-body">
            <div class="table-responsive">
                <table id="booksTable" class="table table-bordered table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Category</th>
                            <th>Rating</th>
                            <th>Price</th>
                            <th>Stock</th>
                            <th>Quantity</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($books as $index => $book)
                        <tr>
                            <td>{{ $books->firstItem() + $index }}</td>
                            <td>{{ $book->title }}</td>
                            <td>{{ $book->book_category }}</td>
                            <td>{{ $book->star_rating }}</td>
                            <td>{{ $book->price }}</td>
                            <td>{{ $book->stock }}</td>
                            <td>{{ $book->quantity }}</td>
                            <td>
                                  <a href="{{ route('details', $book) }}" class="btn btn-info btn-sm">Details</a>
                                <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editModal{{ $book->id }}">Edit</button>
                                <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteModal{{ $book->id }}">Delete</button>
                            </td>
                        </tr>

                        <!-- Edit Book Modal -->
                       <div class="modal fade" id="editModal{{ $book->id }}" tabindex="-1">
    <div class="modal-dialog">
        <form method="POST" action="{{ route('books.update', $book) }}">
            @csrf @method('PUT')
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Book</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="title{{ $book->id }}" class="form-label">Book Title</label>
                        <input id="title{{ $book->id }}" name="title" value="{{ $book->title }}" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="category{{ $book->id }}" class="form-label">Category</label>
                        <input id="category{{ $book->id }}" name="book_category" value="{{ $book->book_category }}" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="rating{{ $book->id }}" class="form-label">Star Rating</label>
                        <input id="rating{{ $book->id }}" name="star_rating" type="number" step="0.1" value="{{ $book->star_rating }}" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="price{{ $book->id }}" class="form-label">Price</label>
                        <input id="price{{ $book->id }}" name="price" type="number" value="{{ $book->price }}" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="stock{{ $book->id }}" class="form-label">Stock</label>
                         <select id="stock{{ $book->id }}" name="stock" class="form-select">
                            <option value="In Stock" {{ $book->stock == 1 ? 'selected' : '' }}>In Stock</option>
                            <option value="Out Of Stock" {{ $book->stock == 0 ? 'selected' : '' }}>Out of Stock</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="quantity{{ $book->id }}" class="form-label">Quantity</label>
                        <input id="quantity{{ $book->id }}" name="quantity" type="number" value="{{ $book->quantity }}" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-warning" type="submit">Update</button>
                </div>
            </div>
        </form>
    </div>
</div>


                        <!-- Delete Book Modal -->
                        <div class="modal fade" id="deleteModal{{ $book->id }}" tabindex="-1">
                            <div class="modal-dialog modal-dialog-centered">
                                <form method="POST" action="{{ route('books.destroy', $book) }}">
                                    @csrf @method('DELETE')
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Confirm Delete</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete <strong>{{ $book->title }}</strong>?
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                            <button class="btn btn-danger" type="submit">Delete</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-center mt-3">
                {{ $books->onEachSide(1)->links('pagination::bootstrap-5') }}
            </div>
        </div>
    </div>
</div>

<!-- Create Book Modal -->
<div class="modal fade" id="createBookModal" tabindex="-1">
    <div class="modal-dialog">
        <form method="POST" action="{{ route('books.store') }}">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Book</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <input name="title" class="form-control mb-2" placeholder="Book Title" required>
                    <input name="book_category" class="form-control mb-2" placeholder="Category" required>
                    <input name="star_rating" type="number" step="0.1" class="form-control mb-2" placeholder="Rating" required>
                    <input name="price" type="number" class="form-control mb-2" placeholder="Price" required>
                   <select id="stock{{ $book->id }}" name="stock" class="form-select">
                            <option value="In Stock" {{ $book->stock == 1 ? 'selected' : '' }}>In Stock</option>
                            <option value="Out Of Stock" {{ $book->stock == 0 ? 'selected' : '' }}>Out of Stock</option>
                        </select>
                    <input name="quantity" type="number" class="form-control mb-2" placeholder="Quantity">
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="submit">Create Book</button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection

@section('scripts')
<script>
    function fetchLiveWeather() {
        $.get('/live-weather', function(data) {
            $('#weatherData').html(`
                🌤️ Weather in ${data.city} —
                ${data.temp}°C, ${data.condition},
                Humidity: ${data.humidity}%,
                Wind: ${data.wind} kph
                <img src="${data.icon}" style="height:20px;" class="ms-2" />
            `);
        }).fail(() => {
            $('#weatherData').html('⚠️ Unable to fetch live weather');
        });
    }

    $(function () {
        $('#booksTable, #usersTable').DataTable({
            paging: false, searching: true, ordering: true, info: false
        });

        fetchLiveWeather();
        setInterval(fetchLiveWeather, 60000);
    });
</script>
@endsection
