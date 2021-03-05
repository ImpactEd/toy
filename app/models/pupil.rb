class Pupil < ApplicationRecord
  belongs_to :school, inverse_of: :pupils
  has_many :pupil_measurements, inverse_of: :pupil

  alias_attribute :to_s, :full_name
  before_create do
    self.external_ident ||= SecureRandom.hex(30)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
