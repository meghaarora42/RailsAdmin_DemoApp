namespace :db do
  desc "Recreate Image attachments and save them in database"
  task :seed_with_images => :environment do
    Product.find_each do |product|
      if product.image_file_name.blank?
        filename = Rails.root.join('public', 'system', 'images', '1.jpg')

        if File.exists? filename
          puts "Re-saving image attachment #{product.id} - #{filename}"
          image = File.new filename
          product.image = image
          product.save!
          # if there are multiple styles, you want to recreate them :
          product.image.reprocess! 
          image.close
        end
      end
    end
  end
end