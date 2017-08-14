# Exercise 1

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

andy = BankAccount.new(20000,1.005)
# puts andy.deposit(1000)
# puts andy.gain_interest
# puts andy.withdraw(200)
# puts andy.withdraw(40000)


# Exercise 2

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
nala = Cat.new("Nala","treats",7)
# puts lois.eats_at
# puts nala.meow


# Exercise 3

class Player
  attr_reader :gold_coins, :health_points, :lives

  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end



  def level_up
    @lives += 1
  end

  def collect_treasure
    if @gold_coins % 10 == 0
      level_up
      @gold_coins += 1
    else
      @gold_coins += 1
    end
  end

  def do_battle(damage)
    if damage >= @health_points  && @lives > 1
      @lives -= 1
      @health_points = 10
    elsif damage >= @health_points
      restart
    else
      @health_points -= damage
    end
  end

  def restart
    initialize
  end
end

john = Player.new
#
# puts john.lives
# john.level_up
# puts john.lives
# puts john.collect_treasure
# puts john.lives

# john.do_battle(1)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(2)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(3)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(2)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(10)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(10)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(10)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(10)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"
# john.do_battle(10)
# puts "Lives: #{john.lives}, Health: #{john.health_points}"


# Exercise 4
