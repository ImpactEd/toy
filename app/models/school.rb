class School < ApplicationRecord
  has_many :pupil, inverse_of: :school
end
