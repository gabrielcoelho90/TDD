describe 'Comparation' do
  it '>' do
    expect(5).to be > 2
  end

  it '>=' do
    expect(5).to be > 2
    expect(5).to be >= 5
  end

  it '<' do
    expect(8).to be < 10
  end

  it '<=' do
    expect(8).to be < 10
    expect(10).to be <= 10
  end

  it 'be between inclusive' do
    expect(8).to be_between(2,9).inclusive
    expect(2).to be_between(2,9).inclusive
    expect(9).to be_between(2,9).inclusive
  end

  it 'be between exclusive' do
    expect(8).to be_between(2,9).exclusive
    expect(6).to be_between(2,9).exclusive
    expect(3).to be_between(2,9).exclusive
  end

  it 'match cpf' do
    expect("123.456.789-12").to match(/\d+3.\d+.\d+-\d+/)
  end

  it 'start_with' do
    expect("casa").to start_with('c')
  end

  it 'end_with' do
    expect("casa").to end_with('asa')
  end
end
