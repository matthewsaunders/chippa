class MediaListsController < ApplicationController
  layout 'layouts/v2/dashboard'

  def index
    @media_lists = MediaList.all
  end

  def show
    @media_list = MediaList.find(params[:id])
  end

  def new
    @media_list = MediaList.new
    @media_members = MediaMember.all
    @tags = Tag.all
  end

  def create
    @media_list = MediaList.new(media_list_params)

    if @media_list.save
      flash[:info] = 'List created'
      redirect_to media_lists_path
    else
      flash[:info] = "Error"
      redirect_to media_lists_path
    end
  end

  def media_list_params
    params.require(:media_list).permit(:name, :description)
  end
end
