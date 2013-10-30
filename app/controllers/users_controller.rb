class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if params[:input_terms_consent]
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Welcome to the community"
        redirect_to root_path
      else
        render :new
      end
    else
      flash[:notice] = "You must accept the Terms and Conditions"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = @auth
    render :new
  end

  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def check_if_logged_in
    redirect_to root_path unless @auth.present?
  end
end
