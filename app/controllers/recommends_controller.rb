class RecommendsController < ApplicationController
  require 'itunes-search-api'
  def index
    @searchs = ITunesSearchAPI.search(
      :term => params[:term],
      :country => 'jp',
      :media => 'music',
      :lang => 'ja_jp',
      :limit => '4'
      ).each do |item|
          p item
        end
      #limitで検索結果の表示数を決める。
      #4件では少ないのでページネーションを用いて数を増やした方が見栄えは良い。
  end
end
