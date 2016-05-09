require 'rails_helper'

RSpec.describe Track, type: :model do
  describe "attributes" do
    it "should have events associated with the track" do
      track = Track.create(name: "Test Track")
      Event.create(name: "Test Event", date: "12/8/2015", start_time: "7:45:00", end_time: "8:45:00", track: track)
      expect(track.event.name).to eql('Event')
    end
  end
end
