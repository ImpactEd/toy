require 'rails_helper'

RSpec.describe "pupils/edit", type: :view do
  before(:each) do
    @pupil = assign(:pupil, create(:pupil))
  end

  it "renders the edit pupil form" do
    render

    assert_select "form[action=?][method=?]", pupil_path(@pupil), "post" do

      assert_select "input[name=?]", "pupil[first_name]"

      assert_select "input[name=?]", "pupil[last_name]"

      assert_select "input[name=?]", "pupil[external_ident]"

      assert_select "input[name=?]", "pupil[school_id]"
    end
  end
end
