require 'person'

shared_examples 'status' do |felling|
  it "#{felling}" do
    person.send("#{felling}!") # pulo do gato
    expect(person.status).to eq("I am #{felling}!")
  end
end

describe 'person status' do
  subject(:person) { Person.new }

  it_behaves_like 'status', :happy
  it_behaves_like 'status', :sad
  it_behaves_like 'status', :thrilled

  # it '#happy!' do
  #   person.happy!
  #   expect(person.status).to eq("I am happy!")
  # end

  # it '#sad' do
  #   person.sad!
  #   expect(person.status).to eq("I am sad!")
  # end

  # it '#thrilled' do
  #   person.thrilled!
  #   expect(person.status).to eq("I am thrilled!")
  # end
end
