# 📚 Online Book Store — Laravel Project

An elegant and modern Laravel-based web application that allows users to browse, search, and view books, while admins can manage books and users via a powerful dashboard. The system also integrates live weather via API and follows proper MVC and Laravel best practices.

---

## 🚀 Features

### ✅ Public (Authenticated Users)
- User login & logout
- View store with paginated book listings
- View book details
- Live weather ticker on home page

### ✅ Admin Dashboard
- Admin login
- Add, edit, delete books
- View book stock, price, and rating
- Manage user roles and credentials
- Modal-based UI for editing and deleting

### ✅ Technical Stack
- **Backend:** Laravel (Latest Stable)
- **Frontend:** Blade, Bootstrap 5 (fully responsive)
- **Database:** MySQL
- **APIs:** Weather API integrated via `/live-weather`

---

## 📂 Folder Structure

```plaintext
app/
├── Http/
│   ├── Controllers/
│   │   ├── BookController.php
│   │   └── UserController.php
├── Models/
│   ├── Book.php
│   └── User.php
resources/
├── views/
│   ├── auth/ (login, register)
│   ├── home.blade.php (dashboard)
│   ├── store.blade.php (storefront)
│   ├── components/ (modals, partials)
routes/
└── web.php
```

---

## ⚙️ Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/online-book-store.git
   cd online-book-store
   ```

2. **Install Dependencies:**
   ```bash
   composer install
   npm install && npm run dev
   ```

3. **Configure Environment:**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. **Set Up Database:**
   ```bash
   php artisan migrate --seed
   ```

5. **Run the App:**
   ```bash
   php artisan serve
   ```

---

## 🔐 Admin Credentials

```plaintext
Email: sakthibala64469@gmail.com
Password: 23$Bala69
```

> You can modify default credentials in `DatabaseSeeder.php`.

---

## 🌐 API Integration

### Weather API
- `/live-weather` endpoint fetches current weather data using a public weather API.
- Displays as a ticker banner on the home/dashboard page.

---

## 📸 Screenshots


https://drive.google.com/drive/folders/1J6vdi0Bd4SWd2xh-0dzNtdjXnTVecQe2?usp=sharing

---

## ✅ Final Notes

- Clean and commented code
- Follows Laravel MVC architecture
- Responsive and accessible UI
- No cloning or pre-built templates used
- I have included sql file of the database , use it for faster setup

---

## 🧑‍💻 Author

Built with ❤️ by [Sakthi Bala](https://github.com/Sakthi-Maan)

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
