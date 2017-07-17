# Store with Authentication

#### Created by Ben Metzger

## Description

Rails product / review app with authentication and authorization. Users with admin set to true are able to add, edit  and delete products, as well as remove comments.

## Prereqs

* Rails
* PostgreSQL

## Setup

1) Clone repo
2) Run bundle within project directory. Install missing gems if prompted
3) Run "rake db:create", "rake db:migrate", and "rake db:seed" to setup the database (ensure postgres is properly installed and running)
4) Run "rails s" to start the server, then navigate to localhost:3000
5) Sign In using "admin@admin.com" / "password" for admin priviledges, or user@user.com / password for user priviledges

## Technologies Used

* Bootstrap with Bootstrap form gem
* Ruby / Rails
* PostgreSQL

## Known Bugs

Unsure

## Desired Updates

* Add categories
* Improve styling

### License

MIT