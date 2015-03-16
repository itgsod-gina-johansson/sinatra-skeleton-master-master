class App < Sinatra::Base
  enable :sessions

  get '/' do #om det kommer en förfrågan efter resursen "/"
    @users = User.all
    @products = Product.all
    @statuses = Status.all
    @line_items = LineItem.all
    @orders = Order.all
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

  get '/colacookie' do
    slim :colacookie
  end

end

