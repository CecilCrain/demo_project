class CommentsController < ApplicationController
  def index
  	@users = User.all
  	render 'index'
  end

  def create
   	@user = User.find(session[:current_user_id])
    @user.comment = params[:comment]
    @user.save
    @users = User.all
    render 'index'
  end

  def admin
    @users = User.all
  end

end

