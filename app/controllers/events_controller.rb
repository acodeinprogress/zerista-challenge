class EventsController < ApplicationController
  def new

  end

  def create

  end

  def index
    @track_1_events = Event.where("track = ? OR track = ?", Track.where(name: Track.where("name LIKE '%1'")), Track.where.not("name LIKE '%1%' OR name LIKE '%2%' OR name LIKE '%3%' OR name LIKE '%4%' OR name LIKE '%5%'"))
    @track_2_events = Event.where("track = ? OR track = ?", Track.where(name: Track.where("name LIKE '%2%'")), Track.where.not("name LIKE '%1%' OR name LIKE '%2%' OR name LIKE '%3%' OR name LIKE '%4%' OR name LIKE '%5%'"))
    @track_3_events = Event.where("track = ? OR track = ?", Track.where(name: Track.where("name LIKE '%3%'")), Track.where.not("name LIKE '%1%' OR name LIKE '%2%' OR name LIKE '%3%' OR name LIKE '%4%' OR name LIKE '%5%'"))
    @track_4_events = Event.where("track = ? OR track = ?", Track.where(name: Track.where("name LIKE '%4%'")), Track.where.not("name LIKE '%1%' OR name LIKE '%2%' OR name LIKE '%3%' OR name LIKE '%4%' OR name LIKE '%5%'"))
    @track_5_events = Event.where("track = ? OR track = ?", Track.where(name: Track.where("name LIKE '%5%'")), Track.where.not("name LIKE '%1%' OR name LIKE '%2%' OR name LIKE '%3%' OR name LIKE '%4%' OR name LIKE '%5%'"))
  end
end
