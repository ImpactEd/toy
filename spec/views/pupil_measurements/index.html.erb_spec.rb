require 'rails_helper'

RSpec.describe "pupil_measurements/index", type: :view do
  before(:each) do
    assign(:pupil_measurements, [
      create(:pupil_measurement,
        assessment: "Some assessment",
        original_mark: "medium",
        score: 123,
      ),
      create(:pupil_measurement,
        assessment: "Some assessment",
        original_mark: "good",
        score: 123,
      )
    ])
  end

  it "renders a list of pupil_measurements" do
    render
    assert_select "tr>td", text: "Some assessment".to_s, count: 2
    assert_select "tr>td", text: "medium".to_s
    assert_select "tr>td", text: "good".to_s
    assert_select "tr>td", text: "123", count: 2
  end
end
