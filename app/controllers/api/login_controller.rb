class Api::LoginController < Api::BaseController
  def login
    if current_user?
      @user_login = current_user
      respond_with @user_login
    end
  end
  
  def fb_login
    @user = User.find_by(uid: params[:uid])
    
    if @user.present?
      respond_with @user
    else
      @user = User.new(uid: params[:uid], f_name: params[:f_name], l_name: params[:l_name], profile_picture: params[:profile_picture])
      @user.token = SecureRandom.hex
      @user.email = "email"
      @user.password = "password"
      @user.gender = "gender"
      @user.day = 0
      @user.month = 0;
      @user.year = 0;
      @user.save

      respond_with @user
    end
  end

  def create
    respond_with @user = User.authenticate(*session_params.values_at(:email, :password))
  end

  def destroy #####
    respond_with root_path
  end

protected

  def session_params
    params.require(:login).permit(:email, :password)
  end
end
