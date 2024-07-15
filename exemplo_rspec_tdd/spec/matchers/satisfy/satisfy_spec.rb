describe 'satisfy' do
  it {expect(["casa", "bala", "alma"]).to satisfy do |x|
    x.map { |el| el.length == 4}
  end
}
end
