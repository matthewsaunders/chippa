class TagsController < ApplicationController
  layout 'layouts/v2/dashboard'

  def index
    @search = params[:q]
    @tags   = @search ? Tag.where("name like ?", "%#{@search}%").all : Tag.all
    @tag    = Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      flash[:info] = 'Created tag.'
      redirect_to tags_path
    else
      flash[:info] = "Error"
      redirect_to tags_path
    end
  end

  def update
    @tag = Tag.find(params[:id])

    if @tag && @tag.update(tag_params)
      flash[:info] = "Updated tag '#{@tag.name}' successfully"
      redirect_to tags_path
    else
      flash[:info] = "Error"
      redirect_to tags_path
    end
  end

  def destroy
    tag = Tag.find(params[:id])

    if tag
      tag.destroy
      flash[:success] = "Deleted tag '#{tag.name}'"
      redirect_to tags_path
    else
      flash[:error] = "Failed to delete tag"
      redirect_to tags_path
    end
  end

  private

  def tag_params
    params.require(:tag).permit(
      :name,
      :description,
      :color
    )
  end
end
