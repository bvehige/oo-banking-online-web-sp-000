require.'pry'

class BankAccount
  
  attr_accessor :balance, :status 
  attr_reader :name 

def initialize(name, balance, status)
  @name = name
  balance = 1000
  status = "open" 

end

def deposit(amount)
  binding.pry
  balance += amount
  balance 
end

def display_balance
  puts "Your balance is $#{balance}."
end
  


end
