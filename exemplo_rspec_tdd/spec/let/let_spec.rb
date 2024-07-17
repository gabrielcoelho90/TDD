require 'person'

describe 'Attributes' do
  # before(:each) do
  #   @person = Person.new()
  #   p ">>>>>>>>>> BEFORE EACH >>>>>>>>>>"
  # end

  # after(:each) do
  #   @person.age = 90
  #   p ">>>>>>>>>> #{@person.age} AFTER EACH >>>>>>>>>>"
  # end
  let(:person) { Person.new }

  it 'have_attributes' do
    person.name = "gabriel"
    person.age = 33
    expect(person).to have_attributes(name: "gabriel", age: 33)
  end

  it 'have_attributes' do
    person.name = "Allie"
    person.age = 30
    expect(person).to have_attributes(name: "Allie", age: 30)
  end
end
