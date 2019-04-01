require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}."
  end

  get '/square/:number' do
    @square = (params[:number].to_i**2).to_s
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @string = params[:phrase]
    answer = ''
    params[:number].to_i.times do
      answer += @string
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == 'subtract'
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == 'multiply'
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == 'divide'
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
  # # Create a dynamic route at  that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
end
