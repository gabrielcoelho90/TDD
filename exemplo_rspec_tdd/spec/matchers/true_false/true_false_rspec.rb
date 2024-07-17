describe "Matcher true or false" do
  it 'be true' do
    expect(1.odd?).to be true
  end

  it 'be false' do
    expect(1.even?).to be false
  end

  it 'be nil' do
    expect(defined? x).to be_nil
  end
end
