require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversedname = params[:name].reverse
    "#{@reversedname}"
  end

  get '/square/:number' do
    @squarednum = params[:number].to_i
    "#{@squarednum ** 2}"
  end

  get '/say/:number/:phrase' do
    # :phrase * :number.to_i
    num = params[:number].to_i
    phrase = params[:phrase]

    "#{phrase}" * num
  end
  #
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]

    str = @words.join(" ")
    str + "."

    # Alt version
    # "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if operation == 'add'
      add_operation = num1 + num2
      add_operation.to_s

    elsif operation == 'subtract'
      subtract_op = num1 - num2
      subtract_op.to_s

    elsif operation == 'divide'
      div_operation = num1 / num2
      div_operation.to_s

    elsif operation == 'multiply'
      mult_operation = num1 * num2
      mult_operation.to_s

    end
  end
end





#
# get "/multiply/:num1/:num2" do
#   @product = params[:num1].to_i * params[:num2].to_i
#   "#{@product}"
# end
