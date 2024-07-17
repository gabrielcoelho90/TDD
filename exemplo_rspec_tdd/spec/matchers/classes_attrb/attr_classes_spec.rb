require 'person'

describe 'Attributes' do
  before(:each) do
    @person = Person.new()
    p ">>>>>>>>>> BEFORE EACH >>>>>>>>>>"
  end

  after(:each) do
    @person.age = 90
    p ">>>>>>>>>> #{@person.age} AFTER EACH >>>>>>>>>>"
  end

  it 'have_attributes' do
    @person.name = "gabriel"
    @person.age = 33
    expect(@person).to have_attributes(name: "gabriel", age: 33)
  end

  it 'have_attributes' do
    @person.name = "Allie"
    @person.age = 30
    expect(@person).to have_attributes(name: "Allie", age: 30)
  end
end


# Despite rspec show us like this :

# ">>>>>>>>>> BEFORE CONTEXT >>>>>>>>>>"
# ">>>>>>>>>> BEFORE EACH >>>>>>>>>>"
# ">>>>>>>>>> 90 AFTER EACH >>>>>>>>>>"
#   have_attributes
# ">>>>>>>>>> BEFORE EACH >>>>>>>>>>"
# ">>>>>>>>>> 90 AFTER EACH >>>>>>>>>>"
#   have_attributes
# ">>>>>>>>>> AFTER CONTEXT >>>>>>>>>>"
# ">>>>>>>>>> AFTER SUITE >>>>>>>>>>"

# It executes the logic that was supposed to be.
