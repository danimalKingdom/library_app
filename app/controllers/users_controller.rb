class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body
    puts "response: #{response}"
    user = User.create(
      full_name: params[:full_name],
      email: params[:email],
      password: params[:password],
      image_url: response["data"]["img_url"]
      )
    login(user)
    redirect_to user_path(user)
  end

  def show
    @user = User.find(params[:id])
  end

end
