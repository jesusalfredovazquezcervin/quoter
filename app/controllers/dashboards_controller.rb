class DashboardsController < ApplicationController
  before_action :authenticate_user!
  def dashboard_1
    if !user_signed_in?
      render :layout => "empty"
    end
  end

  def dashboard_2
  end

  def dashboard_3
    @extra_class = "sidebar-content"
  end

  def dashboard_4
    render :layout => "layout_2"
  end

  def dashboard_4_1
  end

end
