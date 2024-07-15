require 'methods'

describe '#get_rid_of_surrounding_whitespaces' do
  it 'should eliminate white and trailing spaces' do
    expect(get_rid_of_surrounding_whitespaces('   Hey yo  ')).to eq('Hey yo')
  end
end

describe '#belongs_to?' do
  it 'should return true if string contain the word' do
    expect(belongs_to?('No time to cry', 'cry')).to be true
  end

  it 'should return false if string not contain the word' do
    expect(belongs_to?('No time to cry', 'cri')).to be false
  end
end

describe '#replace' do
  it 'should return a copy of a string replaced old letters by new letters' do
    expect(replace("casanova", "a", "o")).to eq("cosonovo")
    expect(replace("casanova", "o", "a")).to eq("casanava")
  end
end

describe '#exactly_divide' do
  it 'should return division of an_integer by a_divider' do
    expect(exactly_divide(15, 2)).to eq(7.5)
    expect(exactly_divide(15, 2)).not_to eq(7)
  end
end

describe '#divisible by 2' do
  it 'should be an even' do
    expect(divisible_by_two?(10)).to be true
  end
end

describe '#random_subset' do
  it 'should return a random subset of an_array with size sample_size' do
  end
end
