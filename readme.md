# RailsAdmin Demo Application 

RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data. This is an e-commerce Demo Application for the RailsAdmin Gem!

## Features
* Admin view of a system
* Users can play around with the data
* Refer to the code if you are new to using the gem

## Installation

1. Fork and clone the repository.
2. Run `bundle install`.
3. Run the migrations.
4. Run `rake db:setup` followed by `rake db:seed_with_images`.
5. Start a server `rails s` and administer the data at [/admin](http://localhost:3000/admin).

Note: In case views are not loading (as in the deployed version), delete tmp/cache and run `rake assets:clean`.

If you think you found a bug in RailsAdmin Demo App, you can [submit an issue](https://github.com/Team-CodeBenders/RailsAdmin_DemoApp/issues/new).