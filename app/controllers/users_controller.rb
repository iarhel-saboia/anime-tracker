class UsersController < ApplicationController
    before_action :authenticate_user!
  def index
    @users = User.all
    authorize @users
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
  
    respond_to do |format|
      format.html { redirect_to users_index_path, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private 
  def user_params
    params.require(:user).permit(:email, :role,)
  end

end