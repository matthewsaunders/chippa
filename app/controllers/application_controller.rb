class ApplicationController < ActionController::Base
  layout 'v1/main'

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
      if resource.is_a?(User)
        dashboard_path
      else
        super
      end
  end
end
