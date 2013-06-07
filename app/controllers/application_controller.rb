class ApplicationController < ActionController::Base
  protect_from_forgery
def not_authenticated
  redirect_to login_url, :alert => "First login to access this page."
end
def login_required
    redirect_to root_url unless current_user
  end
end
