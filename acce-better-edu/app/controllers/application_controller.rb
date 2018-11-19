class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  #validate whether the user is authenticate
  #before_action :authenticate_user!

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    #new_user_session_path
    root_path
  end
end
