describe 'Equality Matchers' do
  it "#equal - test instances" do
    x = "gabriel"
    y = "gabriel"
    expect(x).not_to equal(y)
  end

  it "#eql - test values" do
    x = "gabriel"
    y = "gabriel"
    expect(x).to eql(y)
  end

end
