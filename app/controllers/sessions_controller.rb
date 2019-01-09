# class SessionsController < ApplicationController
#
#   def new
#   end
#
#   def create
#     user = User.find_by(email: params[:session][:email].downcase)
#     if user && user.authenticate(params[:session][:password])
#       sign_in user
#       redirect_back_or user
#     else
#       flash.now[:error] = 'Invalid email/password combination'
#       render 'new'
#     end
#   end
#
#   def destroy
#     sign_out
#     redirect_to root_url
#   end
# end
#
#
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # 登入用户，然后重定向到用户的资料页面
      # 调用sessionHelper里的log_in方法，创建cookie
      log_in user
      # 调用session_helper里的redirect_back_or 方法
      # 如果存储了之前请求的地址，就重定向到那个地址，否则重定向到一个默认的地址

      redirect_back_or '/articals'
    else
      # 创建一个错误消息
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
