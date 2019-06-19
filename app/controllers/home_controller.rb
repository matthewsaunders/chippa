class HomeController < ApplicationController
  def main
    if user_signed_in?
      redirect_to dashboard_path
    else
      redirect_to new_user_session_path
    end
  end

  def coming_soon
  end
end
