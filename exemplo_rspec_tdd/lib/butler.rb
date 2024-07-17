class Butler
  attr_accessor :castle

  def initialize(castle)
    self.castle = castle
  end

  def clean_castle
    p "#{self.castle.name} is cleaned!"
  end
end
