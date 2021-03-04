require 'rails_helper'

RSpec.describe "pupils/show", type: :view do
  before(:each) do
    @pupil = assign(:pupil, create(:pupil, first_name: "Charlie"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Charlie/)
  end
end
