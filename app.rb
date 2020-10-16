require 'sinatra/base'

class Birthday < Sinatra::Base

    get '/' do
        erb :name_form
    end

    post '/happy_birthday' do
        @name = params[:name]
        erb :happy_birthday
    end

run! if app_file == $0
end