require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'should belong to customer' do
    customer = create(:customer, name:"gabriel coelho")
    order = create(:order, customer: customer)
    expect(order.customer).to be_kind_of(Customer)
    expect(order.customer.name).to eq("gabriel coelho")
  end

  it 'should have associations through customers' do
    order = create(:oder_female_vip_customer)
    expect(order.customer).to be_kind_of(Customer)
    expect(order.customer.gender).to eq("F")
    expect(order.customer.vip).to be true
  end

  context ' create_list' do
    it 'should create a list of orders'do
      orders = create_list(:order, 5)
      expect(orders.size).to eq(5)
    end

    it 'should create a list of orders and overwrite some attr'do
      orders = create_list(:order, 5, description: "I am overwriting my description")
      puts orders.inspect
      expect(orders.size).to eq(5)
    end
  end
end
