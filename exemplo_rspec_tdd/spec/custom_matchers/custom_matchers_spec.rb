class Player
  attr_accessor :name, :current_zone

  def initialize(z)
    @current_zone = Zone.new(z)
  end

  def in_zone?(z)
    true if self.current_zone = z
  end
end

class Zone
  attr_accessor :number

  def initialize(number)
    @number = number
  end
end



RSpec::Matchers.define :be_in_zone do |zone| # expected
  match do |player| # actual
    p player
    player.current_zone.number == zone
  end
  failure_message do |player|
    "Ops....something went wrong"
  end
end


describe Player do
  it 'should check player zone' do
    @player = Player.new(7)
    expect(@player).to be_in_zone(7)
  end
end
