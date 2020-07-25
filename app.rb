require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reversed = params[:name].reverse
    "#{reversed}"
  end

  get '/square/:number' do
    squared = params[:number].to_i
    "#{squared ** 2}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    name = params[:phrase]
    "#{name}" * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = []
    strings = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    string << strings
    string.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when 'add'
      result = @num1 + @num2
    when 'subtract'
      result = @num1 - @num2
    when 'multiply'
      result = @num1 * @num2
    when 'divide'
     result = @num1 / @num2
    end
    result.to_s
  end
end
