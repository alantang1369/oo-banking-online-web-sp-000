class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status ='pending'
    @amount = amount
  end
  def valid?
    (sender.valid? && receiver.valid?) ? true:false
  end
  
  def execute_transaction 
    if status == "pending" && valid? && sender.balance < amount
      self.sender.balance -= self.amount 
      self.receiver.balance += self.amount
      self.status = "complete"
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
    
