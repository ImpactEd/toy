require 'rails_helper'

RSpec.describe "pupil_measurements/edit", type: :view do
  before(:each) do
    @pupil_measurement = assign(:pupil_measurement, create(:pupil_measurement))
  end

  it "renders the edit pupil_measurement form" do
    render

    assert_select "form[action=?][method=?]", pupil_measurement_path(@pupil_measurement), "post" do

      assert_select "input[name=?]", "pupil_measurement[assessment]"

      assert_select "input[name=?]", "pupil_measurement[original_mark]"

      assert_select "input[name=?]", "pupil_measurement[score]"

      assert_select "input[name=?]", "pupil_measurement[pupil_id]"
    end
  end
end
