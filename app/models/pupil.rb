class Pupil < ApplicationRecord
  belongs_to :school

  before_create do
    self.external_ident ||= SecureRandom.hex(30)
  end
end
