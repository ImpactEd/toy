require 'rails_helper'

RSpec.describe "pupil_measurements/show", type: :view do
  before(:each) do
    @pupil_measurement = assign(:pupil_measurement, create(:pupil_measurement,
      assessment: "Assessment",
      original_mark: "Original Mark",
      score: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Assessment/)
    expect(rendered).to match(/Original Mark/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
