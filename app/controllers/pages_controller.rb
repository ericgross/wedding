class PagesController < ApplicationController
  def show
    @person = Person.new
  end
end
