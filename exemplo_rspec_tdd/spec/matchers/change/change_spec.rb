require 'counter'

describe 'Counter.increase' do
  it {expect{Counter.increase}.to change {Counter.quantity}}
  it {expect{Counter.increase}.to change {Counter.quantity}.by(1)}
  it {expect{Counter.increase}.to change {Counter.quantity}.from(2).to(3)}
end
