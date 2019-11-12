# For the documentation check http://sinatrarb.com/intro.html


class ApplicationController < Sinatra::Base
	# This configuration part will inform the app where to search for the views and from where it will serve the static files
 	


 	

	
  	configure do
    	set :views, "app/views"
    	set :public_dir, "app/public"
    	
  	end

  	get '/result' do
  		if not params[:fromvalue].numeric? 
  			@caution="Please type a valid value"
  			
  			@message=""
  			@result=""
  		else
  			v=params[:fromvalue].to_i
  			if params[:value].to_i
  				val=ApiConnexion.ToEuro(v)
  				from="DOLLAR"
  				to="EURO"
  			else 
  				val=ApiConnexion.ToUsd(v)
  				from="EURO"
  				to="Dollar"
  			end	
  			transaction=ExchangeCoin.new 
  			transaction.fromcoin=from
  			transaction.tocoin=to
  			transaction.result=val
  			transaction.value=v
  			transaction.save

			@result=val.to_s
			@message ="The result of your exchange is : "
		end		
   		erb :index 

  	end

  	get '/' do
  		
   		erb :index 
  	end





  	get '/history' do
  		

  		
  		puts ApiConnexion.ToEuro(1)
   		@exchanges= ExchangeCoin.all
   		erb :history

  		 
  	end


end

