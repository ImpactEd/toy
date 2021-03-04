require 'rails_helper'

RSpec.describe "pupils/new", type: :view do
  before(:each) do
    assign(:pupil, Pupil.new(
      first_name: "MyString",
      last_name: "MyString",
      external_ident: "MyString",
      school: nil
    ))
  end

  it "renders new pupil form" do
    render

    assert_select "form[action=?][method=?]", pupils_path, "post" do

      assert_select "input[name=?]", "pupil[first_name]"

      assert_select "input[name=?]", "pupil[last_name]"

      assert_select "input[name=?]", "pupil[external_ident]"

      assert_select "input[name=?]", "pupil[school_id]"
    end
  end
end
