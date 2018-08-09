class PhotosController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  #sets root as parent-directory of current file
  set :root, File.join(File.dirname(__FILE__), '..')

  #sets view directory correctly
  set :views, Proc.new {File.join(root,"views")}

  #PHOTOS INDEX
  get '/photos' do
    @title = "Photos Page"
    @photos = Photo.all
    erb :'photos/index'
  end

  #NEW
  get '/photos/new' do
    @photo = Photo.new
    erb :'photos/new'
  end

  #CREATE
  post '/photos/' do
    photo = Photo.new
    photo.title = params[:title]
    photo.body = params[:body]
    photo.image = params[:image]
    photo.save
    redirect '/photos'
  end

  #SHOW
  get '/photos/:id' do
    id = params[:id].to_i
    @photo = Photo.find(id)
    # @title = @photo[:title]
    erb :'photos/show'
  end

  #EDIT
  get '/photos/:id/edit' do
    id = params[:id].to_i
    @photo = Photo.find(id)
    erb :'photos/edit'
  end

  #UPDATE
  put '/photos/:id' do
    id = params[:id].to_i
    photo = Photo.find(id)
    photo.title = params[:title]
    photo.body = params[:body]
    photo.image = params[:image]
    photo.save
    redirect '/photos'

  end

  #DESTROY
  delete '/photos/:id' do
    id = params[:id].to_i
    Photo.destroy(id)
    redirect '/photos'
  end

end
