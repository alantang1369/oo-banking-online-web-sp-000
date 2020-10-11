class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender 
    @reciver = receiver 
    @status ='pending'
    @amount = amount
  end
end
    
