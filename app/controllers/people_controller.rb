class PeopleController < ApplicationController
  def create
    @person = Person.create(params.require(:person).permit(:first_name, :last_name, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :phone_number, :email))
    @scroll_to_form = true
    render 'pages/show'
  end
end
