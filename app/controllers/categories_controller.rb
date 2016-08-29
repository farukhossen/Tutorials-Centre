class CategoriesController < ApplicationController
  layout 'dashboards'
  before_action :get_categories
  def new
    @category = Category.new
  end
  def create
    @category = Category.new({name:category_params[:name]})
    if @category.save
      flash['message'] = "successfully added"
      redirect_to new_category_path
    else
      render 'categories/new'
    end

  end

  def edit
    @category = Category.find(params[:id])
  end
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to category_path(@category)
    else
      respond_to do |format|
        format.html{render 'categories/edit'}
      end
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy

    @category = Category.find(params[:id])
    if @category.destroy
      flash[:message] = 'successfully deleted'
    end
    redirect_to dashboards_path

  end

  private

  def category_params
    params.require(:category).permit(:name,:id)
  end
end
