class PostsController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  #sets root as parent-directory of current file
  set :root, File.join(File.dirname(__FILE__), '..')

  #sets view directory correctly
  set :views, Proc.new {File.join(root,"views")}

  #INDEX
  get '/' do
    erb :"/index"
  end

  get '/posts' do
    @title = "Blog Posts"
    @posts = Post.all
    erb :'posts/index'
  end

  #NEW
  get '/posts/new' do
    @post = Post.new
    erb :'posts/new'
  end

  #CREATE
  post '/posts/' do
    post = Post.new
    post.title = params[:title]
    post.body = params[:body]
    post.save
    redirect '/posts'
  end


  #SHOW
  get '/posts/:id' do
    id = params[:id].to_i
    @post = Post.find(id)
    # @title = @post[:title]
    erb :'posts/show'
  end

  #EDIT
  get '/posts/:id/edit' do
    id = params[:id].to_i
    @post = Post.find(id)
    erb :'posts/edit'
  end

  #UPDATE
  put '/posts/:id' do
    id = params[:id].to_i
    post = Post.find(id)
    post.title = params[:title]
    post.body = params[:body]
    post.save
    redirect "/posts"
  end

  #DESTROY
  delete '/posts/:id' do
    id = params[:id].to_i
    Post.destroy(id)
    redirect "/posts"
  end

end
