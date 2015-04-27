class Seeder

  def self.seed!
    self.user
    self.product
    self.order
    self.line_item
    self.status
    #self.user_order
  end

  def self.user
    User.create(username: 'Joggiz', password: 'bananer', first_name: 'Gina', last_name:'Johansson', adress: 'Grens väg 12',
                post_number: '14763', email:'gina.johansson@outlook.com', phonenumber:'0708115336')
  end

  def self.product
    Product.create(name: 'Chocolate Chipkakor', price: '15kr/st', description: 'Innehåller gulten Levereras i en kakkartong 10st i varje',
                  ingredients: 'Choklad Vetemjöl Brun farin Strösocker Bakpulver Smör Vaniljsocker Ägg',
                  image: '/pics/chocolatechip.jpg' )

    Product.create(name: 'Kolakakor', price: '10kr/st', description: 'Innehåller gulten Levereras i en kakkartong 10st i varje',
                  ingredients: 'Sirap Vetemjöl Strösocker Bakpulver Smör Vaniljsocker Ägg',
                  image: '/pics/colacookie.jpg')

    Product.create(name: 'Pepparkakor', price: '10kr/st', description: 'Innehåller gulten Levereras i en kakkartong 10st i varje',
                   ingredients: 'Brun farin Sirap Vatten Smör Kanel Ingefära Kryddnejlikor Vetemjöl Bikarbonat',
                   image: '/pics/gingerbread.jpg')

    Product.create(name: 'M&Mkakor', price: '15kr/st', description: 'Innehåller gulten Levereras i en kakkartong 10st i varje',
                   ingredients: 'M&M Vetemjöl Brun farin Strösocker Bakpulver Smör Vaniljsocker Ägg',
                   image: '/pics/MoMcookie.jpg')

    Product.create(name: 'Vaniljdrömmar', price: '10kr/st', description: 'Innehåller gulten Levereras i en kakkartong 10st i varje',
                   ingredients: 'Vetemjöl Smör Socker Majsolja Vaniljsocker', image: '/pics/vanilladream.jpg')

    Product.create(name: 'Vaniljhjärtan', price: '20kr/st', description: 'Innehåller gulten Levereras i en kakkartong 10st i varje',
                   ingredients: 'Vetemjöl Smör Socker Potatismjöl Ägg Mjölk Vaniljsocker Florsocker',
                   image: '/pics/vanillaheart.jpg')

    Product.create(name: 'Prinsesstårta', price: '150kr', description: 'Innehåller gluten och laktos Levereras i en tårtkartong 22 cm i diameter',
                   ingredients: 'Ägg Socker Vetemjöl Potatismjöl Bakpulver Marsankräm Vispgrädde Vaniljsocker Hallonsylt Marsipan',
                   image: '/pics/princesscake.jpg')

    Product.create(name: 'Kladdkaka', price: '100kr', description: 'Innehåller gluten och laktos Levereras i en tårtkartong 22 cm i diameter',
                   ingredients: 'Bakpulver Ägg Strösocker Vaniljsocker Kakao Mjöl',
                   image: '/pics/mudcake.jpg')

    Product.create(name: 'Chokladtårta', price: '150kr', description: 'Innehåller gluten och laktos Levereras i en tårtkartong 22 cm i diameter',
                   ingredients: 'Smör Ägg Strösocker Vaniljsocker Kakao Vetemjöl Philadelphia Florsocker',
                   image: '/pics/chocolatecake.jpg')

    Product.create(name: 'Cheesecake', price: '100kr', description: 'Innehåller gluten och laktos Levereras i en tårtkartong 22 cm i diameter',
                   ingredients: 'Ägg Strösocker Vispgrädde Vaniljsocker Philadelphia Digestivekex',
                   image: '/pics/cheesecake.jpg')

    Product.create(name: 'Jordgubbstårta', price: '150kr', description: 'Innehåller gluten och laktos Levereras i en tårtkartong 22 cm i diameter',
                   ingredients: 'Bakpulver Ägg Strösocker Potatismjöl Vaniljkräm Jordgubbar Vispgrädde',
                   image: '/pics/strawberrycake.jpg')

    Product.create(name: 'Marrängtåra', price: '150kr', description: 'Innehåller gluten och laktos Levereras i en tårtkartong 22 cm i diameter',
                   ingredients: 'Hallon Jordgubbar Strösocker Vispgrädde Mjölkchoklad Ägg',
                   image: '/pics/marängcake.jpg')

    Product.create(name: 'Blåbärsmuffin', price: '25kr/st', description: 'Innehåller gluten och laktos Levereras i en muffinkartong 8st i varje',
                   ingredients: ' Smör Ägg Strösocker Vaniljsocker Vetemjöl Mjölk Bakpulver Blåbär',
                   image: '/pics/blueberrymuffin.jpg')

    Product.create(name: 'Morots Cupcake', price: '30kr/st', description: 'Innehåller gluten och laktos Levereras i en muffinkartong 8st i varje',
                   ingredients: 'Smör Ägg Strösocker Vaniljsocker Vetemjöl Bakpulver Morot Philadelphia Florsocker',
                   image: '/pics/carrotcupcake.jpg')

    Product.create(name: 'Chokladmuffin', price: '25kr/st', description: 'Innehåller gluten och laktos Levereras i en muffinkartong 8st i varje',
                   ingredients: 'Smör Ägg Strösocker Vaniljsocker Vetemjöl Bakpulver Kakao',
                   image: '/pics/chocolatemuffin.jpg')

    Product.create(name: 'Hallonmuffin', price: '25kr/st', description: 'Innehåller gluten och laktos Levereras i en muffinkartong 8st i varje',
                   ingredients: 'Smör Ägg Strösocker Vaniljsocker Vetemjöl Mjölk Bakpulver Hallon',
                   image: '/pics/raspberrymuffin.jpg')

    Product.create(name: 'Vanilj Cupcake', price: '30kr/st', description: 'Innehåller gluten och laktos Levereras i en muffinkartong 8st i varje',
                   ingredients: 'Smör Ägg Strösocker Vaniljsocker Vetemjöl Bakpulver Philadelphia Florsocker',
                   image: '/pics/vanillacupcakes.jpg')

    Product.create(name: 'Vaniljmuffin', price: '25kr/st', description: 'Innehåller gluten och laktos Levereras i en muffinkartong 8st i varje',
                   ingredients: 'Smör Ägg Strösocker Vaniljsocker Vetemjöl Mjölk Bakpulver',
                   image: '/pics/vanillamuffin.jpg')

    Product.create(name: 'Kanelbulle', price: '25/st', description: 'Innehåller gluten och laktos Levereras i en bullkartong 8st i varje',
                   ingredients: 'Smör Vetemjöl Mjölk Ägg Mandelmassa Ägg Socker Jäst Pärlsocker',
                   image: '/pics/cinnamonbun.jpg')

    Product.create(name: 'Pistagebulle', price: '25/st', description: 'Innehåller gluten, laktos och nötter Levereras i en bullkartong 8st i varje',
                   ingredients: 'Smör Vetemjöl Mjölk Ägg Mandelmassa Ägg Socker Jäst Pärlsocker Pistagenötter',
                   image: '/pics/pistagebun.jpg')

    Product.create(name: 'Solskensbulle', price: '30kr/st', description: 'Innehåller gluten och laktos Levereras i en bullkartong 8st i varje',
                   ingredients: 'Smör Vetemjöl Mjölk Vit sirap Marsan Ägg Socker Jäst',
                   image: '/pics/sunshinebun.jpg')

    Product.create(name: 'Vaniljbulle', price: '25kr/st', description: 'Innehåller gluten och laktos Levereras i en bullkartong 8st i varje',
                   ingredients: 'Smör Vetemjöl Socker Potatismjöl Ägg Mjölk Vaniljsocker Florsocker',
                   image: '/pics/vanillabun.jpg')

    Product.create(name: 'Wienerbröd', price: '30kr/st', description: 'Innehåller gluten och laktos Levereras i en bullkartong 8st i varje',
                   ingredients: 'Smör Vetemjöl Socker Mjölk Ägg Jäst Potatismjöl Vaniljsocker Vaniljkräm Florsocker',
                   image: '/pics/wienerbread.jpg')

    Product.create(name: 'Lussebulle', price: '25kr/st', description: 'Innehåller gluten och laktos Levereras i en bullkartong 8st i varje',
                   ingredients: 'Smör Vetemjöl Socker Mjölk Saffran Ägg Jäst',
                   image: '/pics/lussebun.jpg')
  end

  def self.order
    Order.create(paid: true, delivery_info: 'bajs', delivered: true, delivered_at: 'Grens väg 12',
                 due_at: 'Wed, 12 Oct 2014 12:00:00 +0000', user_id: 1)
  end

  def self.line_item
    LineItem.create(price: '3kr', amount: '5', product: 'Kladdkaka')
    LineItem.create(price: '7kr', amount: '7', product: 'Blåbärsmuffins')
  end

  def self.status
    Status.create(name: 'Levererad', order_id: 1)
    Status.create(name: 'Bakas', order_id: 2)
  end

  #def self.user_order
  #  UserOrder.create(product: 'Prinsesstårta', amount:'3st', cost:'450kr')
  #  UserOrder.create(product: 'Kolakaka', amount:'24st', cost:'240kr')
  #  UserOrder.create(product: 'Vaniljcupcake', amount:'8st', cost:'200kr')
  #end
end