require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end
  
  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end
  
  get '/say/:number/:phrase' do
    params[:number].times do
      "#{params[:phrase]}"
    end
  end

end