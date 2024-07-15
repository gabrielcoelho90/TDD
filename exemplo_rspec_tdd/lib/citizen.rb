class Citizen
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    @age >= 18 ? true : false
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
