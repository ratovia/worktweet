class UsersController < ApplicationController
  def show
    user = User.find(user_params[:id])
    @nickname = user.nickname
    # @tweets = Tweet.where(user_id: params[:id]).order("metadata DESC")
    @tweets = user.tweets.order("metadata DESC")
    @best_tweets = user.tweets[0..1]
    @skills = user.tweet_skills.group(:skill_id).count
  end


  private
    def user_params
      params.permit(:id)
    end
end
