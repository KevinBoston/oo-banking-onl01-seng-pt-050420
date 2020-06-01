class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  @@all = []
  def initialize(name)
    @name = name 
    @balance = 1000 
    @status = "open"
  end
  def deposit(dep_amount)
    @balance += dep_amount
  end
  def display_balance
    "Your balance is $#{self.balance}."
  end
  def valid?
    self.balance > 0 && @status == "open"
  end
  def close_account
    @status = "closed"
  end
end
