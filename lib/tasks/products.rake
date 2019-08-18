require "json"

namespace :product do
  desc "Populate the products table"
  task :populate_products => :environment do
    file_path = File.expand_path("../task_files/products.json", __FILE__)
    file = File.read(file_path)
    products = JSON.parse(file)

    products.each_with_index do |product, index|
      puts "creating product ##{index + 1}"

      result = Product.create(
        uuid: product["uuid"],
        name: product["name"],
        price: product["price"].to_f * 100
      )

      puts "failed to create product ##{index + 1}" unless result.present?
    end
  end
end
