require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/posts_controller.rb'
require_relative './controllers/photos_controller.rb'
require_relative './controllers/careers_controller.rb'
require_relative './models/post.rb'
require_relative './models/photo.rb'

use Rack::MethodOverride
use PhotosController
use CareersController
run PostsController
