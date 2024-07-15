describe (1..8), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(1,2) # or
    is_expected.to cover(1,2)
    expect(subject).not_to cover(0,9) # or
    is_expected.not_to cover(0,9)
  end

  # How can I use is_expected more efficiently

  it { is_expected.to cover(1,2) }
  it { is_expected.not_to cover(0,9) }
end


# expect(subject) == is_expected
