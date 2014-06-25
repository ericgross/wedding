require 'pony'

class RsvpsController < ApplicationController
  def create
    @rsvp = Rsvp.create(params.require(:rsvp).permit(:first_name, :last_name, :email, :attending, :who, :additional_person, :bbq, :brunch, :veggie, :campfire_song, :other))
    if @rsvp.valid?
      Pony.mail(to: 'wedding@ericgross.com', from: 'wedding-planning@ericgross.com', subject: 'Sarah & Eric Wedding', html_body: "<h1>Thanks</h1><div>#{@rsvp.attributes.to_s}</div>")
    else
      Rails.logger.error('Could not save rsvp: ' + @rsvp.errors.full_messages.join(', '))
    end
    @scroll_to_form = true
    render 'pages/show'
  end

end
