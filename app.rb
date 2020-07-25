require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    @libs = params[:phrase] * params[:number].to_i
    "#{@libs.to_s}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @concats = @w1+" "+@w2+" "+@w3+" "+@w4+" "+@w5
    "#{@concats}."
  end

  get '/:operation/:number1/:number2' do

    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @op = params[:operation]

    case @op
    when "add"
      @sum = @n1 + @n2
    when "subtract"
      @sum = @n1 - @n2
    when "multiply"
      @sum = @n1 * @n2
    when "divide"
      @sum = @n1 / @n2
    end

    "#{@sum}"
  end
end
