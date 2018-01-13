class ClipsController < ApplicationController
  def create
    @user_id = current_user.id
    @play_id = @play_id
    @clip = Clip.new(clip_params)
    @clip.play_id = @play_id
    @clip.user_id = @user_id
        redirect_to root_path
  end

  def destroy
    @clip = Clip.find(params[:id])
    if @clip.destroy
      redirect_to user_path(current_user)
    end
  end

  private

  def clip_params
    params.require(:clip).permit(:play_id, :user_id)
  end
end