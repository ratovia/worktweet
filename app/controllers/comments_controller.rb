class CommentsController < ApplicationController
  def create
    comment = Comment.create(
      nickname: create_params[:nickname],
      contents: create_params[:contents],
      tweet_id: params[:tweet_id]
    )
    redirect_to "/tweets/#{comment.tweet.id}/"
  end

  private
    def create_params
      params.permit(:nickname,:contents,:tweet_id)
    end
end
