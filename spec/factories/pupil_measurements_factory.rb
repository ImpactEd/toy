FactoryBot.define do
  factory :pupil_measurement do
    assessment { "Attitude to learning" }
    original_mark { "Medium" }
    score { 3 }
    measurement_date { "2021-03-04" }
    pupil
  end
end
