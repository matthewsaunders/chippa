class MediaMembersController < ApplicationController
  layout 'layouts/v2/dashboard'

  def index
    per_page        = DEFAULT_PER_PAGE
    page            = params[:page] ? params[:page].to_i : 1
    index_start     = ((page - 1) * per_page) + 1
    index_end       = index_start + per_page - 1
    total_count     = MediaMember.all.count
    @media_members  = MediaMember.all.paginate(page: params[:page], per_page: per_page)

    @metadata = {
      from:   index_start,
      to:     index_end > total_count ? total_count : index_end,
      total:  total_count
    }

    render 'index'
  end

  def show
    @media_member = MediaMember.find(params[:id])
  end

  def new
    @media_member = MediaMember.new
    @media_member.emails.build

    render 'new'
  end

  def create
    @media_member = MediaMember::Factory.create!(params)

    if @media_member.persisted?
      redirect_to media_members_path
    else
      render 'new'
    end
  end

  private

  def media_member_params
    params.require(:media_member)
          .permit(
            :first_name,
            :last_name,
            :job_title,
            :email,
            :phone
          )
  end
end
