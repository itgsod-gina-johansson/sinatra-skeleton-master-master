class App < Sinatra::Base
  enable :sessions

  get '/' do #om det kommer en förfrågan efter resursen "/"
    @users = User.all
    @products = Product.all
    @statuses = Status.all
    @line_items = LineItem.all
    @orders = Order.all
    @user_orders = User_order.all
    slim :homepage
  end

  before %r{^(?!/login$)} do
    @user = User.get(session[:user].to_i) if session[:user]
    # redirect '/login' unless @user
  end

  get '/login' do
    slim :homepage
  end

  post '/login' do
    user = User.first(username: params['username'])
    if user.password == params['password']
      session[:user] = user.id
      redirect '/'
    else
      redirect back
    end
  end

  post '/create_new_user' do
    User.create(username: params['username'], password: params['password'], first_name: params['first_name'], last_name: params['last_name'], adress: params['adress'],
                   post_number: params['post_number'], email: params['email'], phonenumber: ['phonenumber'])
    redirect '/'
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

  get '/user_create' do
    slim :user_create
  end

  post '/user_create' do
    slim :user_create
  end

  get '/order' do
    @products = Product.all
    slim :order
  end

  get '/about' do
    slim :about
  end

  get '/contact' do
    slim :contact
  end

  get '/muffin' do
    slim :muffin
  end

  get '/cakes' do
    slim :cakes
  end

  get '/bun' do
    slim :bun
  end

  get '/product/1' do
    slim :chocolatechip
  end

  get '/product/2' do
    slim :colacookie
  end

  get '/product/3' do
    slim :gingerbread
  end

  get '/product/4' do
    slim :MoMcookie
  end

  get '/product/5' do
    slim :vanilladream
  end

  get '/product/6' do
    slim :vanillaheart
  end

  get '/cheesecake' do
    slim :cheesecake
  end

  get '/chocolatecake' do
    slim :chocolatecake
  end

  get '/marängcake' do
    slim :marängcake
  end

  get '/mudcake' do
    slim :mudcake
  end

  get '/prinsesscake' do
    slim :prinsesscake
  end

  get '/strawberrycake' do
    slim :strawberrycake
  end

  get '/cinnamonbun' do
    slim :cinnamonbun
  end

  get '/lussebun' do
    slim :lussebun
  end

  get '/pistagebun' do
    slim :pistagebun
  end

  get '/sunshinebun' do
    slim :sunshinebun
  end

  get '/vanillabun' do
    slim :vanillabun
  end

  get '/wienerbread' do
    slim :wienerbread
  end

  get '/blueberrymuffin' do
    slim :blueberrymuffin
  end

  get '/carrotcupcake' do
    slim :carrotcupcake
  end

  get '/chocolatemuffin' do
    slim :chocolatemuffin
  end

  get '/raspberrymuffin' do
    slim :raspberrymuffin
  end

  get '/vanillacupcakes' do
    slim :vanillacupcakes
  end

  get '/vanillamuffins' do
    slim :vanillamuffins
  end

  get '/checkout' do
    slim :checkout
  end

  get '/LineItem' do
    slim :amount
  end

  post '/LineItem' do
    redirect back
  end

  post '/add_to_cart/:product' do |product_id|
    LineItem.create(amount: params['amount'], user_id: @user)
    redirect back
  end

  get '/checkout' do
    slim :checkout
  end

  get '/creditcard' do
    slim :creditcard
  end

  post '/creditcard' do
    redirect '/checkout'
  end

  get '/faktura' do
    slim :faktura
  end

  post '/faktura' do
    redirect '/checkout'
  end
end


