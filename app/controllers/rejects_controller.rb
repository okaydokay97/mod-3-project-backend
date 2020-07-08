class RejectsController < ApplicationController
  def index
    rejects = Reject.all
    render json: @rejects
  end

  def create
    @match = Reject.create(reject_params)
    render json: @reject
  end
  
  private
  def match_params
      params.require(:reject).permit(:user, :user_two)
  end

end
