require 'money/bank/currencylayer_bank'

class ApiConnexion
  
	api = Money::Bank::CurrencylayerBank.new
	api.access_key = '4c48ceb0e44704586034bcddf77ac0c6'


	Money.default_bank = api  
	
	def self.ToEuro(val)

		res = val*Money.new(100, 'USD').exchange_to('EUR').to_f
    	return res
  	end

  	def self.ToUsd(val)
    	res = val *(1/Money.new(100, 'USD').exchange_to('EUR').to_f)
    	return res
  	end
end


class String
  def numeric?
    Float(self) != nil rescue false
  end
end