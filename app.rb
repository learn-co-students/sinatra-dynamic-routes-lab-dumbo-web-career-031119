require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get'/reversename/:name' do
  @reversed_name= params[:name].reverse
  "#{@reversed_name}"
  end

  get'/square/:number' do
  @squared_number = params[:number].to_i * params[:number].to_i
   "#{@squared_number}"
 end

  get'/say/:number/:phrase' do
    @phrase=params[:phrase].to_s
    @number=params[:number].to_i
    @string=[]

    @number.times do
     @string << @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @array =[
    @word1=params[:word1].to_s,
    @word2=params[:word2].to_s,
    @word3=params[:word3].to_s,
    @word4=params[:word4].to_s,
    @word5=params[:word5].to_s
              ]
      "#{@array.join(' ')}."
    end

  get '/:operation/:number1/:number2' do
    @operation=params[:operation].to_sym
    @number1=params[:number1].to_i
    @number2=params[:number2].to_i
    @operations={
                :add => (@number1 + @number2),
                :subtract =>(@number1 - @number2),
                :divide =>(@number1 / @number2),
                :multiply =>(@number1 * @number2)
              }
          "#{@operations[@operation]}"
    end


end
