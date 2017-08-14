class Paperboy
  attr_reader :name, :experience, :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    50 + @experience/2
  end

  def deliver(start_address,end_address)
    houses = (end_address - start_address + 1).abs

    @earnings += ( houses > quota ? (quota * 0.25 + (houses - quota) * 0.5) : houses * 0.25 - 2)
    @experience += houses
  end

  def report
    "I'm #{name}. I've delivered #{experience} papers and earned $#{earnings} so far."
  end

end

tommy = Paperboy.new("Tommy")
puts tommy.report

puts tommy.quota
tommy.deliver(101,160)
puts tommy.earnings
puts tommy.report

puts tommy.quota
tommy.deliver(1,75)
puts tommy.earnings
puts tommy.report
