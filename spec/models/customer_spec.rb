require 'rails_helper'

RSpec.describe Customer, type: :model do

  it 'create a customer' do
    customer = create(:customer) # I can use build instead of create but it is like new, it doesn't save.
    expect(customer.full_name).to eq("Sr. John Doe")
  end
end
