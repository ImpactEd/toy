require "rails_helper"

RSpec.describe PupilMeasurementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pupil_measurements").to route_to("pupil_measurements#index")
    end

    it "routes to #new" do
      expect(get: "/pupil_measurements/new").to route_to("pupil_measurements#new")
    end

    it "routes to #show" do
      expect(get: "/pupil_measurements/1").to route_to("pupil_measurements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pupil_measurements/1/edit").to route_to("pupil_measurements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pupil_measurements").to route_to("pupil_measurements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pupil_measurements/1").to route_to("pupil_measurements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pupil_measurements/1").to route_to("pupil_measurements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pupil_measurements/1").to route_to("pupil_measurements#destroy", id: "1")
    end
  end
end
