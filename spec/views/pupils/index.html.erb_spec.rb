require 'rails_helper'

RSpec.describe "pupils/index", type: :view do
  before(:each) do
    assign(:pupils, [create(:pupil, first_name: "Josh"), create(:pupil, first_name: "Mandy")])
  end

  it "renders a list of pupils" do
    render
    assert_select "tr>td", text: "Josh"
    assert_select "tr>td", text: "Mandy"
  end
end
