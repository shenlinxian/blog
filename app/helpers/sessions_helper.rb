# module SessionsHelper
#
#   def sign_in(user)
#     remember_token = User.new_remember_token
#     cookies.permanent[:remember_token] = remember_token
#     user.update_attribute(:remember_token, User.digest(remember_token))
#     self.current_user = user
#   end
#
#   def signed_in?
#     !current_user.nil?
#   end
#
#   def current_user=(user)
#     @current_user = user
#   end
#
#   def current_user
#     remember_token  = User.digest(cookies[:remember_token])
#     @current_user ||= User.find_by(remember_token: remember_token)
#   end
#
#   def current_user?(user)
#     user == current_user
#   end
#
#   def signed_in_user
#     unless signed_in?
#       store_location
#       redirect_to signin_url, notice: "Please sign in."
#     end
#   end
#
#   def sign_out
#     current_user.update_attribute(:remember_token,
#                                   User.digest(User.new_remember_token))
#     cookies.delete(:remember_token)
#     self.current_user = nil
#   end
#
#   def redirect_back_or(default)
#     redirect_to(session[:return_to] || default)
#     session.delete(:return_to)
#   end
#
#   def store_location
#     session[:return_to] = request.url if request.get?
#   end
# end

module SessionsHelper

  # 登入指定的用户
  # 在浏览器创建临时性cookie
  def log_in(user)
    session[:user_id] = user.id
  end

  # 根据cookie里的id返回当前登录的用户（如果有的话）
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # 如果用户已登录，返回 true，否则返回 false
  def logged_in?
    !current_user.nil?
  end

  # 退出当前用户
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # 如果指定用户是当前用户，返回 true
  def current_user?(user)
    user == current_user
  end

  # 重定向到存储的地址或者默认地址
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end
  # 存储以后需要获取的地址
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
