class PagesController < ApplicationController
  def show
    if params[:guest]
      @person = Person.all.find{ |user| Digest::MD5.hexdigest(user.id.to_s) == params[:guest] }
      @scroll_to_form = true
    else
      @person = Person.new
    end
  end
end
