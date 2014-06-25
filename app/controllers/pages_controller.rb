class PagesController < ApplicationController
  def show
    @rsvp = Rsvp.new
  end
end
