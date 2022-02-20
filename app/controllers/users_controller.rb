class UsersController < ApplicationController
    before_action :authenticate_user!
  def index
    @users = User.all
    authorize @users
  end

  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_index_path, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
end
