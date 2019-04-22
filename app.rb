require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
  end
  
  get '/square/:number' do 
    ((params[:number].to_i)**2).to_s
  end
  get '/say/:number/:phrase' do 
    str = ""
    (params[:number].to_i).times do 
      str += "#{params[:phrase]}"
    end
    str
  end 
    
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    case operation
    when 'add'
      ((params[:number1].to_i) + (params[:number2].to_i)).to_s
    when 'subtract'
      ((params[:number1].to_i) - (params[:number2].to_i)).to_s
    when 'multiply'
      ((params[:number1].to_i) * (params[:number2].to_i)).to_s
    when 'divide'
      ((params[:number1].to_i) / (params[:number2].to_i)).to_s
    else 
      "Unable to perform this operation"
    end
  end
  
  # get '/:operation/:number1/:number2' do 
  #   operation = params[:operation]
  #   if operation == 'add'
  #     (params[:number1].to_i) + (params[:number2].to_i)
  #   elsif operation == 'substract'
  #     (params[:number1].to_i) - (params[:number2].to_i)
  #   elsif operation == 'multiply'
  #     (params[:number1].to_i) * (params[:number2].to_i)
  #   elsif operation == 'divide'
  #     (params[:number1].to_i) / (params[:number2].to_i)
  #   else 
  #     "Unable to perform this operation"
  #   end
  # end
  

end