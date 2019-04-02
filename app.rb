require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get ("/reversename/:name") {
  	"#{params[:name].reverse}"
  }

  get ("/square/:number") {
  	"#{params[:number].to_i ** 2}"
  }

  get ("/say/:number/:phrase") {
  	@test = []
  	params[:number].to_i.times {
  		@test << params[:phrase].gsub("%20", "")
  	}
  	@test
  }

  get ("/say/:word1/:word2/:word3/:word4/:word5") {
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  }

  get ("/:operation/:number1/:number2") {
  	case params[:operation]
	  	when "add"
	  		(params[:number1].to_i + params[:number2].to_i).to_s
	  	when "subtract"
	  		(params[:number1].to_i - params[:number2].to_i).to_s
	  	when "multiply"
	  		(params[:number1].to_i * params[:number2].to_i).to_s
	  	when "divide"
	  		(params[:number1].to_i / params[:number2].to_i).to_s
  	end
  }
end





# 1. Create a dynamic route at `get '/reversename/:name'` that accepts a name 
# 	and renders the name backwards.

# 2. Create a dynamic route at `get '/square/:number'` that accepts a number 
# 	and returns the square of that number. 
# 	**Note:** Remember that values in params always come in as strings, 
# 	and your return value for the route should also be a string (use `.to_i` and `.to_s`).

# 3. Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number 
# 	and a phrase 
# 	and returns that phrase in a string the number of times given.

# 4. Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts five words 
# 	and returns a string containing all five words 
# 	(i.e. `word1 word2 word3 word4 word5`).

# 5. Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation 
# 	(add, subtract, multiply or divide) 
# 	and performs the operation on the two numbers provided. 
# 	For example, going to `/add/1/2` should render `3`.