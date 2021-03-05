class Pupil < ApplicationRecord
  belongs_to :school, inverse_of: :pupil
  has_many :pupil_measurements, inverse_of: :pupil

  before_create do
    self.external_ident ||= SecureRandom.hex(30)
  end
end
