class DashboardsController < ApplicationController
  layout 'dashboards'
  def index
    @categories = Category.all
  end
end
