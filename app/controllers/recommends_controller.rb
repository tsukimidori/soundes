class RecommendsController < ApplicationController
  before_action :authenticate_recommender!, except: [:index]

  require 'itunes-search-api'
  def index
    @recommends = Recommend.all.order(created_at: :desc)
    @recommender = current_recommender
    @admins = Admin.find_by(email: @recommender.email) if recommender_signed_in?
  end

  def new
    @recommend = RecommendsMusic.new
  end

  def create
    @recommend = RecommendsMusic.new(recommend_params)
    if @recommend.valid?
      @recommend.save
      return redirect_to root_path
    else
      render :new
    end
  end

  def search
    @recommends = Recommend.all.order(created_at: :desc)
    @searchs = ITunesSearchAPI.search(
      :term => params[:term],
      :country => 'jp',
      :media => 'music',
      :lang => 'ja_jp',
      :limit => '5'
      ).each do |item|
          p item
        end
  end

  private
  def recommend_params
    params.require(:recommends_music).permit(:title, :message, :recommender_id).merge(url: params[:url])
  end
end
