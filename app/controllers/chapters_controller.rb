class ChaptersController < ApplicationController

  layout 'application', :only =>[:show]
  layout 'dashboards', :only => [:new, :edit]
  before_action :get_categories

  def new

    @subcategory = SubCategory.find(params[:sub_category_id])
    @chapter = Chapter.new
    @chapter.videos.build

  end

  def create

    @subcategory = SubCategory.find(params[:sub_category_id])
    @chapter  = @subcategory.chapters.new(chapter_params)

    if @chapter.save
      redirect_to new_sub_category_chapter_path(@subcategory)
    else
      redirect_to new_sub_category_chapter_path(@subcategory)
    end

  end

  def edit

    @subcategory = SubCategory.find(params[:sub_category_id])
    @chapter = Chapter.find(params[:id])

  end

  def update

    @subcategory = SubCategory.find(params[:sub_category_id])
    @chapter  = Chapter.find(params[:id])

    if @chapter.update_attributes(chapter_params)
      redirect_to dashboards_path
    else
      respond_to 'chapter'
    end

  end

  def show

    @subcategory = SubCategory.find(params[:sub_category_id])
    @chapters = @subcategory.chapters
    @chapter = @chapters.find(params[:id])

  end

  def destroy

    @chapter = Chapter.find(params[:id])
    if @chapter.destroy
      flash[:message] = "successfully deleted"
    end
    redirect_to :back

  end

  private

  def chapter_params
    params.require(:chapter).permit(:name, :id, :videos_attributes =>[:id, :name, :video_link, :_destroy])
  end

end
