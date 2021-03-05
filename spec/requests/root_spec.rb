require 'rails_helper'

RSpec.describe "root", type: :request do
  it "has links to other pages" do
    get root_url
    expect(response).to be_successful
    assert_select "a[href='#{schools_path}']"
    assert_select "a[href='#{pupils_path}']"
    assert_select "a[href='#{pupil_measurements_path}']"
  end
end
