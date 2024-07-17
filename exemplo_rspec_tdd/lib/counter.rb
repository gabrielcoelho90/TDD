class Counter
  @qty = 0

  def self.quantity
    @qty
  end

  def self.increase
    @qty += 1
  end
end
