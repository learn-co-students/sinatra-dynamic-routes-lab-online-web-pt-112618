require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @num =  params[:number].to_i 
    @phrase = params[:phrase]
    
    result = []
    @num.times {|n| result << @phrase}
    "#{result.join(" ")}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    
    if @operation == "add"
      "#{@n1 + @n2}"
    elsif @operation == "subtract"
      "#{@n1 - @n2}"
    elsif @operation == "multiply"
      "#{@n1 * @n2}"
    elsif @operation == "divide"
     "#{@n1 / @n2}"
    end 
  end 

end
