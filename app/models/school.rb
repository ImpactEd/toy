class School < ApplicationRecord
  has_many :pupils, inverse_of: :school
end
