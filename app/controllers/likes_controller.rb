class LikesController < ApplicationController
  before_action :logged_in_user
  def create
    @micropost = Micropost.find(params[:micropost_id])
    unless @micropost.iine?(current_user) then
      respond_to do | format|
        format.html{ redirect_to request.referrer || root_url }
        format.js
      end
    end
    @micropost.iine(current_user)
  end

  def destroy
    @micropost = like.find(params[:id]).micropost
    if @maicropost.iine(current_user)
      @micropost.uniine(current_user)
      respond_to do |format|
        format.html{redirect_to request.referrer || root_url}
      end
    end
  end
end
