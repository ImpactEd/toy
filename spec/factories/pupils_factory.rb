FactoryBot.define do
  factory :pupil do
    first_name { "Jane" }
    last_name { "Moloney" }
    sequence(:external_ident){|n| "pupil-ident-#{n}" }
    school
  end
end
