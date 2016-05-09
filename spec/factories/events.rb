FactoryGirl.define do
  factory :event do
    name "Test Event"
    date "12/8/2015"
    time "7:45:00"
    track { Track.create("Track 1 - Biometrics") }
  end
end
