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

  post '/create_new_user' do #user/create
    User.create(username: params['username'], password: params['password'], first_name: params['first_name'], last_name: params['last_name'], adress: params['adress'],
                   post_number: params['post_number'], email: params['email'], phonenumber: ['phonenumber'])
    redirect '/'
  end

  post '/logout' do #user/logout
    session.clear
    redirect '/'
  end

  get '/user_create' do #user/new
    slim :user_create
  end

  get '/product/:id' do |id|
    @product = Product.get(id)
    slim :product
  end


  get '/products' do
    @products = Product.all
    slim :products
  end

  get '/about' do
    slim :about
  end

  get '/contact' do
    slim :contact
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


