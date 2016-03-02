class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order

  def after_sign_in_path_for(admin)
    admin_path
  end

  def after_sign_in_path_for(user)
    root_path
  end

  def after_sign_up_path_for(user)
    root_path
  end

  

  def current_order
    if !session[:transaction_id].nil?
      Transaction.find(session[:transaction_id])
    else
      Transaction.new
    end
  end

end
