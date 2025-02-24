class PagesController < ApplicationController

  def about
    # some other code could happen here
    # like making a call to a database
  end

  def home

    # return 'app/views/pages/home.html.erb'
  end

  def contact
    # @students = Student.all
    @students = ['Genius', 'Siza', 'Sifiso', 'Bongi', 'Micaela']
    if params["student"]
      @students = @students.find { |student| student == params["student"] }
    else
      @students = ['Genius', 'Siza', 'Sifiso', 'Bongi', 'Micaela']
    end
  end
end
