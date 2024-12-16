class Users::SessionsController < Devise::SessionsController
  layout 'user/login'

  def after_sign_in_path_for()

  end

  def after_sign_in_path_for(_resource)
    unless current_user.companies_count.zero?
        company=Company.where(user_id: current_user, enable: true).order('basic desc, id desc').first
        session[:company_id] = company.id
    end

    session['user_return_to'] || root_path
  end
end
