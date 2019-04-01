require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @squared_num = params[:number].to_i
    "#{@squared_num * @squared_num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @final_phr = ""
    @num.times do
      @final_phr += "#{@phrase}\n"
    end
    @final_phr
  end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end

   get '/:operation/:number1/:number2' do
     @operation = params[:operation]
     @num_1 = params[:number1].to_i
     @num_2 = params[:number2].to_i

     if @operation == "add"
       @ans = (@num_1 + @num_2).to_s
     elsif @operation == "subtract"
       @ans = (@num_1 - @num_2).to_s
     elsif @operation == "multiply"
       @ans = (@num_1 * @num_2).to_s
     elsif @operation == "divide"
       @ans = (@num_1 / @num_2).to_s
     end
   end

end
