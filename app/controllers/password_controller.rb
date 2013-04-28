require "json"

class PasswordController < ApplicationController
  def encrypt
    email = params[:email] || "brandonh+#{User.count + 1}@ibethel.org"
    @user = User.find_or_initialize_by_email(email)
    @user.password = params[:password]
    @user.save!

    render json: {
      encrypted: @user.encrypted_password,
      password: @user.password,
      email: @user.email
    }.to_json
  end
end
