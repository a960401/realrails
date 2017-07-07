require 'sinatra'

get '/' do 
    "hack your life"
end

get '/likelion/:name' do 
    "Hello Likelion, #{params[:name]} "
end

get '/cube/:num' do 
    num = params[:num].to_i
    (num**3).to_s
 
end

get '/view' do
    send_file "index.html"
end

get '/views' do
    erb :index
end