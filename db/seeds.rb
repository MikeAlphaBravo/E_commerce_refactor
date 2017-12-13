class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    # Products.destroy_all
    20.times do |i|
      Product.create!(
        name: Faker::Lorem.word,
        price: rand(10...100),
        description: Faker::Lorem.sentence(5, false, 0).chop,
        image_url: Faker::LoremPixel.image("200x200", false, 'fashion')
      )
    end
  end

  # def generate_users
  #   Users.destroy_all
  #   1.times do |i|
  #     User.create!(
  #       id: 1,
  #       name: "admin",
  #       email: "admin@admin.com",
  #       admin: true
  #     )
  #   end
  # end

end

Seed.begin
