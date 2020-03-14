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
  if 
    valid? && @status == "pending"
    if 
      @sender.balance > @amount 
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  else
    @status = "rejected"
    return "Transaction rejected. Please check your account balance."
  end
end

def reverse_transfer 
  if  @status = "complete"
    @receiver.balance -= @amount
    @sender.balance += @amount
    @status = "reversed"
  end
  
    
    
  
  
end
