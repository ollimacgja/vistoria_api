class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :auth
  before_action :authenticate_user!
  def auth

    if current_user != nil
      aux = Usuario.where "user_id = ?",current_user.id
      @usuario = aux[0]


    end
  end


end
