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

class Cat
  attr_reader :name, :preferred_food, :meal_time

  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    @meal_time < 11 ? "#{@meal_time} AM" : "#{@meal_time-12} PM"
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end
end

lois = Cat.new("Lois","tuna",23)
puts lois.eats_at
puts lois.meow
