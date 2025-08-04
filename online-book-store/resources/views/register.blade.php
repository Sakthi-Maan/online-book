@extends('layouts')

@section('title', 'Register')

@section('content')
<div class="d-flex align-items-center min-vh-100 bg-light">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-5 col-lg-4">
        <div class="card shadow-sm rounded p-4">
          <h2 class="mb-4 text-center">Register</h2>

          {{-- Success message --}}
          @if(session('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              {{ session('success') }}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
          @endif

          {{-- Validation errors --}}
          @if($errors->any())
            <div class="alert alert-danger alert-dismissible fade show">
              <ul class="mb-0">
                @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
                @endforeach
              </ul>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
          @endif

          <form method="POST" action="{{ route('register.submit') }}">
            @csrf

            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input 
                type="text" 
                class="form-control @error('name') is-invalid @enderror" 
                id="name" 
                name="name" 
                value="{{ old('name') }}" 
                required 
                autofocus
              >
              @error('name')
                <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <div class="mb-3">
              <label for="email" class="form-label">Email Address</label>
              <input 
                type="email" 
                class="form-control @error('email') is-invalid @enderror" 
                id="email" 
                name="email" 
                value="{{ old('email') }}" 
                required
              >
              @error('email')
                <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input 
                type="password" 
                class="form-control @error('password') is-invalid @enderror" 
                id="password" 
                name="password" 
                required
              >
              @error('password')
                <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <div class="mb-4">
              <label for="password_confirmation" class="form-label">Confirm Password</label>
              <input 
                type="password" 
                class="form-control @error('password_confirmation') is-invalid @enderror" 
                id="password_confirmation" 
                name="password_confirmation" 
                required
              >
              @error('password_confirmation')
                <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <button type="submit" class="btn btn-success w-100">Register</button>
          </form>

          <p class="mt-3 text-center">
            Already have an account? 
            <a href="{{ route('login.form') }}">Login here</a>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
