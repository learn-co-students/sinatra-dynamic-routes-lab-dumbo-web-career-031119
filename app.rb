require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do
    @number_to_use = params[:number]
    (@number_to_use.to_i ** 2).to_s
  end


  get "/say/:number/:phrase" do
    @times = params[:number]
    @phrase_given = params[:phrase]

    "#{@phrase_given}" * @times.to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]

    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end


  get "/:operation/:number1/:number2" do

    @oper = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @oper == "add"
      (@num1.to_i + @num2.to_i).to_s
    elsif @oper == "subtract"
      (@num1.to_i - @num2.to_i).to_s
    elsif @oper == "multiply"
      (@num1.to_i * @num2.to_i).to_s
    elsif @oper == "divide"
      (@num1.to_i / @num2.to_i).to_s
    end
  end


end
