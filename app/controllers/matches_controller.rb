class MatchesController < ApplicationController
 # If a match is created (user1 and user2 both clicked match) the user2 will NOT show in the showpage for user1 anymore?
 # If we don't set the above=> If the user will still be showing, can the user1 reject the user2 if a match already exist? 
 # or the user 1 has to delete user2 match relation from match menu?
  def index
    matches = Match.all
    render json: @matches
  end

  def create
    @match = Match.create(match_params)
    render json: @match
  end

  def delete
    match = Match.find_by(id: params[:id])
    match.delete
  end
  
  private
  def match_params
      params.require(:match).permit(:user, :user_two)
  end
  
end
