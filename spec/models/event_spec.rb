require 'rails_helper'
require 'spec_helper'

RSpec.describe Event, type: :model do
  describe "attributes" do
    it "should have a track associated with the event" do
      event = Event.create(name: "Test Event", date: "12/8/2015", start_time: "7:45:00", end_time: "8:45:00", track: Track.new(name: "Test Track"))
      expect(event.track.name).to eql('Test Track')
    end
  end
end
