FactoryBot.define do
  factory :customer, aliases: [:user] do
    transient do
      upcased { false }
      combat_diver {false}
    end

    name  {Faker::Name.name}
    email {Faker::Internet.email}
    order

    # factory:vip_customer do
    #   vip {true}
    #   days_to_pay {30}
    # end

    # factory:nonvip_customer do
    #   vip {false}
    #   days_to_pay {15}
    # end

    after(:create) do |customer, evaluator| # When we use transient, FactoryBot creates a Class to store those attributes, evaluator is the instance of that Class.
      customer.name.upcase! if evaluator.upcased
      customer.name = "#{customer.name} combat diver" if evaluator.combat_diver
    end

    trait :female do
      gender {'F'}
    end

    trait :male do
      gender {'M'}
    end

    trait :vip_customer do
      vip {true}
      days_to_pay {30}
    end

    trait :nonvip_customer do
      vip {false}
      days_to_pay {15}
    end

    factory :female_vip_customer, traits: [:female, :vip_customer]
    factory :male_vip_customer, traits: [:male, :vip_customer]
    factory :female_nonvip_customer, traits: [:female, :nonvip_customer]
    factory :male_nonvip_customer, traits: [:male, :nonvip_customer]
  end
end
