class TutorialsController < ApplicationController

  def show
    @categories = Category.all

  end

end
