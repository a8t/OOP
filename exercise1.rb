class BankAccount
  attr_reader :balance, :interest_rate

  def initialize(balance,interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance
      puts "Insufficient funds!"
      @balance = 0
    else
      @balance -= amount
    end
  end

  def gain_interest
    @balance *= interest_rate
  end
end

andy = BankAccount.new(20000,1.13)

puts andy.withdraw(400)
puts andy.gain_interest
puts andy.withdraw(40000)
puts andy.gain_interest
