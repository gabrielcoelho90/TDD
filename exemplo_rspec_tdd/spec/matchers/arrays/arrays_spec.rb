RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3,4,5]), 'It is an array?' do
  it '#include' do
    expect(subject).to include(3)
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1,2,4,3,5) # must be the entire array without brackets, can be sorted.
  end
  #or
  it '#match_array' do
    expect(subject).to match_array([1,2,3,4,5]) # must be the entire array with brackets
  end
end
