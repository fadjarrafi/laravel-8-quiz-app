# Laravel Quiz Apps (Laravel 8)

# Demo

#### Akun admin.

```
Admin login
email: admin@gmail.com
password : password
```

# Database

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_quizz_app
```

b. cara menjalankan:
`composer update`
`npm install mix`
`npm install`

`php artisan key:generate`
`php artisan migrate --seed`
`php artisan serve`

# Testing API

#### Testing menggunakan PostmanAPI

## Parameters

POST: `id` , `name` , `email` , `Password`

## Endpoints

#### Login menggunakan akun Admin

Login: `POST http://localhost/api/login`

Register: `POST http://localhost/api/register`

Get hasil kuis dengan ID: `GET http://localhost/api/admin_view_result/{id}`

Get semua data users: `GET http://127.0.0.1:8000/api/registered_students`
