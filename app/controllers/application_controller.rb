class ApplicationController < ActionController::Base
  def hello 
    render html: "¡hello,mundo!"
  end
  def goodbye 
    render html: "goodbye"
  end
  include SessionsHelper
  private

  # ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url, status: :see_other
    end
  end
end
