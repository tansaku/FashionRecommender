require 'sinatra'

set :public_folder, Proc.new { File.join(root) }

get '/' do
   erb :index
end

get '/clothes.json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  erb :clothes
end