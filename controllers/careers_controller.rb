class CareersController < Sinatra::Base

  #Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  #sets root as parent-directory of current file
  set :root, File.join(File.dirname(__FILE__), '..')

  #sets view directory correctly
  set :views, Proc.new {File.join(root,"views")}

  $careers = [
    {
      id: 0,
      title: "Vacancy 1",
      body: "This is a description of the 1st vacancy",
      desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
    },
    {
      id: 1,
      title: "Vacancy 2",
      body: "This is a description of the 2nd vacancy",
      desc: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      id: 2,
      title: "Vacancy 3",
      body: "This is a description of the 3rd vacancy",
      desc: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Laboris nisi ut aliquip ex ea commodo consequat."
    }
  ]


  get '/careers' do
    @title = "Careers Homepage"
    @careers = $careers
    erb :'careers/index'
  end

  #NEW
  get '/careers/new' do
    "<h2>NEW VACANCY PAGE</h2>"
  end

  #CREATE
  post '/careers/:id' do

  end

  #SHOW
  get '/careers/:id' do
    id = params[:id].to_i
    @vacancy = $careers[id]
    @title = @vacancy[:title]
    erb :'careers/show'
  end

  #EDIT
  get '/careers/:id/edit' do
    "EDIT PAGE"
  end

  #UPDATE
  put '/careers/:id' do

  end

  #DESTROY
  delete '/careers/:id' do

  end

end
