class CitationsController < ApplicationController
  def index
    @citations = Citation.all
  end

  def new
  end
  

end
