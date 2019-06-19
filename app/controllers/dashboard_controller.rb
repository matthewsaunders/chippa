class DashboardController < ApplicationController
  def index
    @media_lists = MediaList.includes(:tags).all
    @recently_viewed = []

    # render 'index', layout: 'layouts/v1/dashboard'
    render 'v2_index', layout: 'layouts/v2/dashboard'
  end
end
