class App < Sinatra::Base
  enable :sessions

  get '/' do #om det kommer en förfrågan efter resursen "/"
    @users = User.all
    @products = Product.all
    @statuses = Status.all
    @line_items = LineItem.all
    @orders = Order.all
    @user_orders = User_order.all
    slim :index
  end

  before %r{^(?!/login$)} do
    @user = User.get(session[:user].to_i) if session[:user]
    # redirect '/login' unless @user
  end

  get '/login' do
    slim :index
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
                   post_number: params['post_number'])
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
    slim :order
  end

  get '/about' do
    slim :about
  end

  get '/contact' do
    slim :contact
  end

  get '/buns' do
    slim :buns
  end

  get '/cakes' do
    slim :cakes
  end

  get '/fikabread' do
    slim :fikabread
  end

  get '/Kakor/colacookie' do
    slim :colacookie
  end

  get '/Kakor/chocolatechip' do
    slim :chocolatechip
  end

  get '/Kakor/gingerbread' do
    slim :gingerbread
  end

  get '/Kakor/vanilladream' do
    slim :vanilladream
  end

  get '/Kakor/vanillaheart' do
    slim :vanillaheart
  end

  get '/Kakor/M&Mcookie' do
    slim :M&Mcookie
  end

  get '/Tårtor/cheesecake' do
    slim :cheesecake
  end

  get '/Tårtor/chocolatecake' do
    slim :chocolatecake
  end

  get '/Tårtor/marängcake' do
    slim :marängcake
  end

  get '/Tårtor/mudcake' do
    slim :mudcake
  end

  get '/Tårtor/prinsesscake' do
    slim :prinsesscake
  end

  get '/Tårtor/strawberrycake' do
    slim :strawberrycake
  end

  get '/Bullar/cinnamonbun' do
    slim :cinnamonbun
  end

  get '/Bullar/lussebun' do
    slim :lussebun
  end

  get '/Bullar/pistagebun' do
    slim :pistagebun
  end

  get '/Bullar/sunshinebun' do
    slim :sunshinebun
  end

  get '/Bullar/vanillabun' do
    slim :vanillabun
  end

  get '/Bullar/wienerbread' do
    slim :wienerbread
  end

  get '/Fikabröd/blueberrymuffin' do
    slim :blueberrymuffin
  end

  get '/Fikabröd/carrotcupcake' do
    slim :carrotcupcake
  end

  get '/Fikabröd/chocolatemuffin' do
    slim :chocolatemuffin
  end

  get '/Fikabröd/raspberrymuffin' do
    slim :raspberrymuffin
  end

  get '/Fikabröd/vanillacupcakes' do
    slim :vanillacupcakes
  end

  get '/Fikabrödvanillamuffins' do
    slim :vanillamuffins
  end
end

