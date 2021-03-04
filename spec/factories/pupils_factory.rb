FactoryBot.define do
  factory :pupil do
    first_name { "Jane" }
    last_name { "Moloney" }
    sequence(:external_ident){|n| "external-ident-12345" }
    school
  end
end
