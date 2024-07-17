$count = 0

describe 'let' do
  let(:count) { $count += 1}

  it 'should be cached after first call inside the test.' do
    expect(count).to eq(1)
    expect(count).to eq(1)
    expect(count).to eq(1)
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it "when is called in another test, it's not cached." do
    expect(count).to eq(2)
  end
end


# let is a helper that is called only once in each test, after that let is cached.
