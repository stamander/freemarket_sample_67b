class ApplicationController < ActionController::Base
  before_action :basic_auth
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @furimauser = Furimauser.all
  end
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == '67_b' && password == '0313'
    end
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:nuckName]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end