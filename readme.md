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
4. Set up your config variables for aws. This can be done as follows: 
   * <code> export AWS_ACCESS_KEY_ID='your_aws_access_id' </code>
   * <code> export AWS_SECRET_ACCESS_KEY='your_aws_access_key'</code>
   * <code> export S3_BUCKET_NAME='your_s3_bucket_name'</code>
4. Run `rake db:setup`. This would load some test data that we have populated. 
5. Running `rake db:seed_with_images` would load default images for you IF you have them in your S3 bucket. 
The path for those images need to be `products/images/default_productID.jpg`
You can skip this step if you don't want to populate default images. 

Note: In case views are not loading (as in the deployed version), delete tmp/cache and run `rake assets:clean`.

If you think you found a bug in RailsAdmin Demo App, you can [submit an issue](https://github.com/Team-CodeBenders/RailsAdmin_DemoApp/issues/new).
