describe 'all' do
  it {expect([1,3,5,7,9]).to all(be_odd.and be < 10)}
  it { expect(['Rapa', 'Rasa', 'Rala']).to all(start_with('R').and end_with('a'))}
end
