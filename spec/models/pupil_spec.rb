require 'rails_helper'

RSpec.describe Pupil, type: :model do
  describe "factory" do
    it "is valid" do
      expect(build(:pupil)).to be_valid
    end
    it "makes school if not given" do
      expect(create(:pupil).school).to be_a School
    end
  end

  describe "#external_ident" do
    let(:pupil) { build(:pupil, external_ident: nil) }
    it "is randomly assigned on creation if blank" do
      expect { pupil.save! }.to change { pupil.external_ident }.from(be_nil)
    end
  end
end
