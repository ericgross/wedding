require 'pony'

class PeopleController < ApplicationController
  def create
    @person = Person.create(params.require(:person).permit(:first_name, :last_name, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :phone_number, :email))
    if @person.valid?
      Pony.mail(to: 'wedding@ericgross.com', from: 'wedding-planning@ericgross.com', subject: 'Sarah & Eric Wedding', html_body: "<h1>Thanks</h1><div>You can always go view/edit your information <a href=\"#{request.protocol}#{request.host_with_port}#{@person.url_suffix}\">here</a>.</div><div>#{@person.attributes.to_s}</div>")
    end
    @scroll_to_form = true
    render 'pages/show'
  end

=begin
  def update
    @person = Person.find(params[:id])
    @person.update_attributes(params.require(:person).permit(:first_name, :last_name, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :phone_number, :email))
    @person.save
    @scroll_to_form = true
    render 'pages/show'
  end
=end
end
