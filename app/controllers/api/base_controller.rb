class Api::BaseController < ApplicationController
  # Skip CSRF check
  skip_before_action :verify_authenticity_token
  
  include FullRequestAndResponseLogger

  respond_to :json

protected

  def current_user
    @current_user ||= User.find_by(token: request.headers[:authorization])
  end

  def authenticate_user!
    unless current_user?
      render status: :unauthorized
    end
  end
end
