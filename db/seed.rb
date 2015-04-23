class Seeder

  def self.seed!
    self.line_item
    self.order
    self.product
    self.status
    self.user
    self.user_order
  end

  def self.line_item
    LineItem.create(price: "3kr", amount: "5", product: "Kladdkaka")
    LineItem.create(price: "7kr", amount: "7", product: "Blåbärspaj")
  end

  def self.order
    Order.create(paid: true, delivery_info: "bajs", delivered: true, delivered_at: "Grens väg 12",
                 due_at: "Wed, 12 Oct 2014 12:00:00 +0000", user_id: 1, product_id: 1)
  end

  def self.product
    Product.create(name: "Chocolate Chipkakor", price: "15kr", description: "God chokladboll nomnom",order_id: 1,) #product_id:1)
    Product.create(name: "Kolakakor", price: "10kr", description: "Vanilj is really good, yas", order_id: 2,) #product_id: 2)
    Product.create(name: "Pepparkakor", price: "10kr", description: "Pepparkakor", order_id: 3,) #product_id: 3)
    Product.create(name: "M&Mkakor", price: "15kr", description: "M&M", order_id: 1,) #product_id: 4)
    Product.create(name: "Vaniljdrömmar", price: "10kr", description: "Vanilj is good", order_id: 3,) #product_id: 5)
    Product.create(name: "Vaniljhjärtan", price: "20kr", description: "Vanilj is good", order_id: 3,) #product_id: 6)
  end

  def self.status
    Status.create(name: "Levererad", order_id: 1)
    Status.create(name: "Bakas", order_id: 2)
  end

  def self.user
    User.create(username: "Joggiz", password: "bananer", first_name: "Gina", last_name:"Johansson", adress: "Grens väg 12",
                post_number: "14763", email:"gina.johansson@outlook.com", phonenumber:"0708115336")
  end

  def self.user_order
    User_order.create(product: "Prinsesstårta", amount:'3st', cost:'450kr')
    User_order.create(product: "Kolakaka", amount:'24st', cost:'240kr')
    User_order.create(product: "Vaniljcupcake", amount:'8st', cost:'200kr')
  end
end