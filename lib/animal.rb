class Animal
  attr_reader :kind, :age, :age_in_days
  attr_accessor :weight

  def initialize(kind, weight, age)
    @kind = kind
    @weight = "#{weight} pounds"
    @age = "#{age} weeks"
    @age_in_days = age * 7
  end

  # def weight
    # "#{@weight} pounds"
  # end

  def feed!(food)
    @weight + food #how to modify argument???
  end
end
