class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout
  before_action :set_locale
  before_action :set_submenu
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_ability
    @current_ability ||= UserAbility.new(current_user)
  end

  rescue_from CanCan::AccessDenied do |exception|
    session["user_return_to"] = request.fullpath
    unless current_user
      redirect_to new_user_session_path, :notice => t(:login_first)
    else
      redirect_to new_company_path, :alert => '권한이 없습니다. 전문가 분야,정보 등록후에 가능합니다.'
    end
  end

  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale

    @script='application'
  end

  def set_submenu
    @product_categories = ProductCategory.where(enable: true).page(0).per(100).order('id desc')

    @notice_count = Notice.where(enable: true).count
    @notices = Notice.where(enable: true).page(0).per(2).order('id desc')
  end

  def layout
    if params[:no_layout].present?
      return nil
    else
      if params[:popup].present?
        return 'popup'
      else
        return 'application'
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
                                                               :password_confirmation, :remember_me, :photo, :photo_cache, :remove_photo).except(:roles_admin__attributes) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password,
                                                                      :password_confirmation, :current_password, :photo, :photo_cache, :remove_photor) }
  end
end
