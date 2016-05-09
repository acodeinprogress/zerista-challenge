require 'spec_helper'

feature "Users can see all events for specific day" do
  scenario "when they visit homepage" do
    track = Track.new(name: "Track 1 - Test")
    event = Event.create(name: "Test Event", date: "12/8/2015", start_time: "7:45:00", end_time: "8:45:00", track: track)

    visit root_path

    expect(page).to have_content("Track 1 - Test")
  end
end
