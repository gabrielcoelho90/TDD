require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name' do
    customer = create(:customer) # I can use build instead of create but it is like new, it doesn't save.
    expect(customer.full_name).to start_with("Sr. ")
  end

  it '#full_name - sobrescrevendo attributo' do
    customer = create(:customer, name:'gabriel coelho') # I can use build instead of create but it is like new, it doesn't save.
    expect(customer.full_name).to start_with("Sr. gabriel coelho")
  end

  it '#full_name - using aliases' do
  customer = create(:user) # I can use build instead of create but it is like new, it doesn't save.
  expect(customer.full_name).to start_with("Sr. ")
  end

  context 'Heritage' do
    it 'should be VIP' do
      customer = create(:vip_customer) # I can use build instead of create but it is like new, it doesn't save.
      expect(customer.vip).to be true
      expect(customer.days_to_pay).to eq(30)
    end

    it 'should be not VIP' do
      customer = create(:nonvip_customer) # I can use build instead of create but it is like new, it doesn't save.
      expect(customer.vip).to be false
      expect(customer.days_to_pay).to eq(15)
    end
    # the same of above
    it {expect(create(:nonvip_customer).vip).to be (false)}
    it {expect(create(:nonvip_customer).days_to_pay).to eq(15)}

  end

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end
