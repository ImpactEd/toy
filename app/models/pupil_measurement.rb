class PupilMeasurement < ApplicationRecord
  belongs_to :pupil, inverse_of: :pupil_measurements
end
