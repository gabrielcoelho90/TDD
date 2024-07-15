class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "I am happy!"
  end

  def sad!
    @status = "I am sad!"
  end

  def thrilled!
    @status = "I am thrilled!"
  end
end
