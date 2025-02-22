class Users::RegistrationsController < Devise::RegistrationsController
  layout 'user/login'

  def index
    @users = User.order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render :json => @notices }
    end
  end

  def show
    @users = User.order('id desc').page(params[:page]).per(10)

    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render :json => @notices }
    end
  end

  #GET /resource/sign_up
  #def new
  #    resource = build_resource({})
  #     respond_with resource
  #end

  # POST /resource
  def create
    build_resource(resource_params)

    #if Rails.env.production?
    #  result = verify_recaptcha(:model => resource) && resource.save
    #else
      result = resource.save
    #end

    if result
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_in(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  def expire_session_data_after_sign_in!
    session.keys.grep(/^devise\./).each { |k| session.delete(k) }
  end

  def edit
    unless @user.user_picture.present?
      @user.build_user_picture
    end

    unless @user.user_address.present?
      @user.build_user_address
    end
  end
  def update_resource(resource, params)
    resource.update(params)
  end

  def after_sign_up_path_for(resource)
    after_sign_in_path_for(resource)
  end

  # The path used after sign up for inactive accounts. You need to overwrite
  # this method in your own RegistrationsController.
  def after_inactive_sign_up_path_for(resource)
    respond_to?(:root_path) ? root_path : "/"
  end

  # The default url to be used after updating a resource. You need to overwrite
  # this method in your own RegistrationsController.
  def after_update_path_for(resource)
    signed_in_root_path(resource)
  end


  protected

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :phone, user_picture_attributes: [:id, :picture], user_address_attributes: [:user_id, :postcode, :address, :address_detail])
  end

  private

  def resource_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :phone, user_pictures_attributes: [:picture], user_address_attributes: [:user_id, :postcode, :address, :address_detail])
  end
end
