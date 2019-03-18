require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    ret_array = []
    params[:number].to_i.times do
      ret_array.push(params[:phrase])
    end
    ret_array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.map do |value|
      value
    end.join(" ")+"."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i

    case @operation
    when "add"
      (@num_one+@num_two).to_s
    when "subtract"
      (@num_one-@num_two).to_s
    when "multiply"
      (@num_one*@num_two).to_s
    when "divide"
    (@num_one/@num_two).to_s
    end
  end

end
