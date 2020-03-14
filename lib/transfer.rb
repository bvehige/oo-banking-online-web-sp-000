class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status 
    @amount = amount 
  end
  
  def valid?
    if @sender.valid? && @receiver.valid? 
      true 
    else
      false 
    end
  end
  
def execute_transaction 
  if @sender.balance > @amount && @status == "pending"
    @sender.balance -= @amount 
    @receiver.balance += @amount
    @status = "complete"
  else
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end  
end
  
end
