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

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }

  context 'Heritage' do
    it 'should be VIP' do
      customer = create(:male_vip_customer) # I can use build instead of create but it is like new, it doesn't save.
      expect(customer.vip).to be true
      expect(customer.days_to_pay).to eq(30)
    end

    it 'should be not VIP' do
      customer = create(:female_nonvip_customer) # I can use build instead of create but it is like new, it doesn't save.
      expect(customer.vip).to be false
      expect(customer.days_to_pay).to eq(15)
    end
    # the same of above
    it {expect(create(:female_nonvip_customer).vip).to be (false)}
    it {expect(create(:female_nonvip_customer).days_to_pay).to eq(15)}
  end

  context 'Attributes' do
    it 'gets the attributes of a model'do
      attrs = attributes_for(:customer)
      attrs_vip = attributes_for(:female_vip_customer)
      expect(Customer.create(attrs).name?).to be true
      expect(Customer.create(attrs_vip).vip).to be true
    end
  end
  # Transient attributes are attributes only available within the factory definition,
  # and not set on the object being built. This allows for more complex logic inside factories.
  context 'Transient' do
    it 'should create  attributes inside factory only' do
      customer = create(:customer, name:"gabriel coelho", upcased: true, combat_diver: true)
      # expect(customer.name).to eq(customer.name.upcase)
      expect(customer.name).to eq("GABRIEL COELHO combat diver")
    end
  end

  context 'Traits' do # Traits allow you to group attributes together and then apply them to any factory.
    it 'should expect customized factories based on traits' do
      customer = create(:male_vip_customer, name:"gabriel coelho")
      expect(customer.name).to eq("gabriel coelho")
      expect(customer.vip).to be true
      expect(customer.gender).to eq("M")
    end
  end

end
