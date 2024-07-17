class Castle
  attr_accessor :name, :king, :butler

  def initialize(name, king_name)
    self.name = name
    self.king = King.new(king_name)
    self.butler = Butler.new(self)
  end

  def ownership_details
    p "#{self.name} is ruled by #{self.king.name}"
  end
end

# I could change all "self.something" for "@something"
