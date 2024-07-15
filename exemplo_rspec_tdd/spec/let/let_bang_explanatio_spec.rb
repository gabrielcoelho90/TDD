$counter = 0

describe "let!" do
  order_of_calling = []

  let!(:count) do
    order_of_calling << "calling let!"
    $counter += 1
  end

  it 'should show the order of calling let!' do
    order_of_calling << "testing order of appearence"
    expect(order_of_calling).to eq(["calling let!", "testing order of appearence"])
    expect($counter).to eq(1)
  end
end


# let! is calling before the test starts.
