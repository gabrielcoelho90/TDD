FactoryBot.define do
  factory :order do
    sequence (:description) { |n| "Order number - #{n}" }
    # association :customer, factory: :customer # it is the same of under declaration
    customer


    trait :order_female_vip do
      association :customer, factory: :female_vip_customer
    end

    factory :oder_female_vip_customer, traits: [:order_female_vip]
  end
end
