require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      #@team = Team.new(params[:team])
      binding.pry
      #params[:team][:members].each {|element| Hero.new(element)}
      #@members = Hero.all

      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @team_members = params[:team][:members]
      #binding.pry
      erb :show
    end
end
