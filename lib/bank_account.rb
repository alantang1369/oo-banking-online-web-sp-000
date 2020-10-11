class BankAccount
  attr_accessible :name, :balance, :status 
  def initialize(name)
    @name = name 
    @balance = 1000 
    @status = "open"
  end
end
