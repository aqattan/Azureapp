require "uri"
class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def connect
  end

  def auth
    redirect_to '/auth/azure_oauth2'
  end

  def callback

    @first_name = auth_hash["info"]["first_name"]
    @last_name = auth_hash["info"]["last_name"]
    @email = auth_hash["info"]["email"]
    @token = auth_hash['credentials']["token"]

  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end

end
