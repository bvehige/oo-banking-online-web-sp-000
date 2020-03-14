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
  if @sender.balace > @amount && @status == "pending"
    @sender.balance -= @amount 
    @receiver.balance += @amount
    @status = "complete"
  else
    return 
    
    @status - "rejected"
    
  
  
end
describe '#execute_transaction' do
    let(:avi) { BankAccount.new("Avi") }
    let(:amanda) { BankAccount.new("Amanda") }
    let(:transfer) { Transfer.new(amanda, avi, 50) }
    let(:bad_transfer) { Transfer.new(amanda, avi, 4000) }

    it "can execute a successful transaction between two accounts" do
      transfer.execute_transaction
      expect(amanda.balance).to eq(950)
      expect(avi.balance).to eq(1050)
      expect(transfer.status).to eq("complete")
    end

    it "each transfer can only happen once" do
      transfer.execute_transaction
      expect(amanda.balance).to eq(950)
      expect(avi.balance).to eq(1050)
      expect(transfer.status).to eq("complete")
      transfer.execute_transaction
      expect(amanda.balance).to eq(950)
      expect(avi.balance).to eq(1050)
    end

    it "rejects a transfer if the sender does not have enough funds (does not have a valid account)" do
      terrance.close_account
      closed_account_transfer = Transfer.new(amanda, terrance, 50)
      expect(closed_account_transfer.execute_transaction).to eq("Transaction rejected. Please check your account balance.")
      expect(closed_account_transfer.status).to eq("rejected")

      expect(bad_transfer.execute_transaction).to eq("Transaction rejected. Please check your account balance.")
      expect(bad_transfer.status).to eq("rejected")
    end

