require 'citizen'

describe Citizen do
  subject(:citizen) { Citizen.new('gabriel', 'coelho', 33)}

  it 'should be an instance of Citizen' do
    expect(citizen).to be_instance_of(Citizen)
    expect(citizen).to have_attributes(first_name: 'gabriel', last_name: 'coelho', age: 33)
  end

  context '#can_vote?' do
    it 'is not minor' do
      expect(citizen.can_vote?).to be true
    end

    it 'is minor' do
      citizen.age = 15
      expect(citizen.can_vote?). to be false
    end
  end

  context '#full_name' do
    it 'should return full name' do
      expect(citizen.full_name).to eq("gabriel coelho")
    end
  end
end
