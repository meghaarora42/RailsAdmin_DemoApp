namespace :db do
  s3 = AWS::S3.new
  desc "Recreate Image attachments and save them in database"
  task :seed_with_images => :environment do
    Product.find_each do |product|
      filename = 'products/images/default_' + product.id.to_s + '.jpg'
      object = s3.buckets[ENV['S3_BUCKET_NAME']].objects[filename]
      if object != nil
        File.open('seedImage.png', 'wb') do |file|
          object.read do |chunk|
            file.write(chunk)
          end
        end
        puts "Image attachement reset"
        image = File.new 'seedImage.png'
        product.image = image
        product.save!
        product.image.reprocess! 
        image.close
      end
    end
  end
end
