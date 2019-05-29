class TweetsController < ApplicationController
  before_action :move_to_index, except: [:index,:show]
  def index
    @tweets = Tweet.includes(:user).order(created_at: :desc).page(params[:page]).per(5)
  end

  def new
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments.order(created_at: :desc)
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.user.id == current_user.id
      @tweet.destroy
    end
    redirect_to controller: :users,action: :show, id: current_user.id
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user.id == current_user.id then
      tweet.update(
        title: tweet_params[:title],
        metadata: tweet_params[:metadata],
        image_url: tweet_params[:image_url],
        summary: tweet_params[:summary],
        contents: tweet_params[:contents],
        site_url: tweet_params[:site_url]
      )
    end
    redirect_to controller: :users,action: :show,id: current_user.id
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.create(
      title: tweet_params[:title],
      metadata: tweet_params[:metadata],
      image_url: tweet_params[:image_url],
      summary: tweet_params[:summary],
      user_id: current_user.id,
      contents: tweet_params[:contents],
      site_url: tweet_params[:site_url]
    )
    redirect_to action: :index
  end

  private
    def tweet_params
      params.permit(:title, :metadata, :image_url,:summary,:contents,:site_url)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
end
