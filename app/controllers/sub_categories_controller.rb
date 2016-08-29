class SubCategoriesController < ApplicationController
  layout 'dashboards', :only => [:new, :create, :show, :edit]
  before_action :get_categories, :only=> [:new, :create, :show, :edit]

  def new
    @subcategory = SubCategory.new
  end

  def create
    @category_id = params[:post][:category_id]
    @category = Category.find(@category_id)
    @subcategory_name = subcategory_params[:name]
    subcat = @category.sub_categories.new(subcategory_params)

    if subcat.save
      redirect_to new_sub_category_path
      flash[:message] = "subcategory is successfully created"
    else
      redirect_to new_sub_category_path
    end

  end

  def edit
    @subcategory = SubCategory.find(params[:id])


  end

  def update
    @subcategory = SubCategory.find(params[:id])
    if @subcategory.update_attributes(subcategory_params)
      redirect_to sub_category_path(@subcategory)
    else
      respond_to do |format|
        format.html{render 'sub_categories/edit'}
      end
    end
  end

  def show
    @subcategory = SubCategory.find(params[:id])
  end

  private
  def subcategory_params
    params.require(:sub_category).permit(:name,:id)
  end

end
