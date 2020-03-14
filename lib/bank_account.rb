require'pry'

class BankAccount
  
  attr_accessor :balance, :status 
  attr_reader :name 

def initialize(name, balance = 1000, status = "open")
  @name = name
  @balance = balance
  @status = status  

end

def deposit(amount)
  @balance += amount
  @balance 
end

def display_balance
  "Your balance is $#{@balance}."
end

def valid?


it "is valid with an open status and a balance greater than 0" do
      @broke = BankAccount.new("Kat Dennings")
      @broke.balance = 0
      @closed = BankAccount.new("Beth Behrs")
      @closed.status = "closed"
      expect(avi.valid?).to eq(true)
      expect(@broke.valid?).to eq(false)
      expect(@closed.valid?).to eq(false)

  
end

  


end
