FactoryBot.define do
  factory :customer, aliases: [:user] do
    name {Faker::Name.name}
    email {Faker::Internet.email}

    factory:vip_customer do
      vip {true}
      days_to_pay {30}
    end

    factory:nonvip_customer do
      vip {false}
      days_to_pay {15}
    end
  end
end
