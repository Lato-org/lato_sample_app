# Lato Sample App

This project is a sample Rails application with all Lato engines integrated. It serves as a reference implementation to demonstrate how to set up and use Lato in a Rails environment and to test engines integration.

## Informations

The project has been created with:
- Ruby version: 3.4.12
- Rails version: 8.1.4

## Download LLM context

To download the LLM lato context, run the following command in your terminal:

```bash
rails llm:download_lato
```

## Setup

To set up the application, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/Lato-org/lato_sample_app.git
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

7. Open `http://localhost:3000/lato` to access the Lato panel. The application home page at `/` is a separate sample page.

8. Login to the Lato panel using the following credentials:
- Email: `admin@mail.com`
- Password: `Password1!`

The sample app includes all Lato engines in this workspace: Lato, Users, Settings, Storage, Spaces, and CMS. Their mounts are `/lato`, `/lato-users`, `/lato-settings`, `/lato-storage`, `/lato-spaces`, and `/lato-cms`.

## Security upgrade

Use Ruby 3.4.12 and Rails 8.1.4. After updating Lato, run `rails lato:install:migrations` and `rails db:migrate` before deployment. Previous sessions are invalidated. Production requests require HTTPS. Active Storage image processing requires libvips 8.13 or newer.
