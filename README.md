# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

### Full Overview of Jungle
!["Main Page"](https://github.com/grant-murphy/jungle/blob/master/docs/main-page.png)
### Login Page
!["Login Page"](https://github.com/grant-murphy/jungle/blob/master/docs/login-page.png)
### Signup Page
!["Signup Page"](https://github.com/grant-murphy/jungle/blob/master/docs/signup-page.png)
### Admin Product Page
!["Admin Products"](https://github.com/grant-murphy/jungle/blob/master/docs/admin-products.png)
### Admin Dashboard Page
!["Admin Products"](https://github.com/grant-murphy/jungle/blob/master/docs/admin-dashboard.png)
### My Cart Page
!["MyCart Page"](https://github.com/grant-murphy/jungle/blob/master/docs/mycart-page.png)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
