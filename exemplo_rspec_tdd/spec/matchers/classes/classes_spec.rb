require 'string_not_empty'

describe 'Classes' do
  it 'be_instance_of' do
    expect(3).to be_instance_of(Integer) # exactly the class
  end

  it 'be_kind_of or be_a' do
    str = StringNotEmpty.new()
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNotEmpty)
    expect(3).to be_kind_of(Integer) # can be by heritage
  end

  it 'respond_to' do
    arr = Array.new
    expect(arr).to respond_to(:count)
  end
end
