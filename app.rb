require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i**2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @number_of_times = params[:number].to_i
    @phrase = params[:phrase]
    @combined_phrase = ""
    @number_of_times.times do
      @combined_phrase += " #{@phrase}"
    end
    "#{@phrase}"
  end
  # get '/say/:word1/:word2/:word3/:word4/:word5' do
  #
  # end
  # get '/:operation/:number1/:number2' do
  #
  # end

end
