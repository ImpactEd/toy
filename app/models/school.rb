class School < ApplicationRecord
  has_many :pupils, inverse_of: :school

  alias_attribute :to_s, :name
end
