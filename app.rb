require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_f**2}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    @number = params[:number]
    @phrase = params[:phrase]
      @number.to_i.times do 
       answer += @phrase
      end
      answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    
    case @operation
    when 'add'
      (@num1 + @num2).to_s
    when 'subtract'
      (@num1 - @num2).to_s
    when 'multiply'
      (@num1 * @num2).to_s
    when 'divide'
      (@num1 / @num2).to_s
    else
      answer = 'no operation available.'
    end
  end


end