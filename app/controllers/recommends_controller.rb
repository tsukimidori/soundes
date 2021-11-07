class RecommendsController < ApplicationController
  require 'itunes-search-api'
  def index
    @recommends = Recommend.all.order(created_at: :desc)
  end

  def new
    @recommend = RecommendsMusic.new
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
    @searchs = ITunesSearchAPI.search(
      :term => params[:term],
      :country => 'jp',
      :media => 'music',
      :lang => 'ja_jp',
      :limit => '5'
      ).each do |item|
          p item
        end
      #limitで検索結果の表示数を決める。
      #4件では少ないのでページネーションを用いて数を増やした方が見栄えは良い。
  end

  private
  def recommend_params
    params.require(:recommends_music).permit(:title, :message, :url)
  end
end
