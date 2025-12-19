# Lato Sample App

This project is a sample Rails application with all Lato engines integrated. It serves as a reference implementation to demonstrate how to set up and use Lato in a Rails environment and to test engines integration.

## Informations

The project has been created with:
- Ruby version: 3.2.0
- Rails version: 8.1.1

## Setup

To set up the application, follow these steps:

1. Clone the repository:
```bash
git clone
```

2. Navigate to the project directory:
```bash
cd lato_sample_app
```

3. Install the required gems:
```bash
bundle install
```

4. Set up the database:
```bash
rails db:create db:migrate
```

5. Run seeds to populate the database with initial data:
```bash
rails db:seed
```

6. Start the Rails server:
```bash
rails server
```

7. Open your web browser and navigate to `http://localhost:3000` to access the application.

8. Login to the Lato panel using the following credentials:
- Email: `admin@mail.com`
- Password: `password`