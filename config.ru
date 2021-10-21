require './app.rb'
configure do
    set :protection, :except => [:json_csrf]
end
run Sinatra::Application
