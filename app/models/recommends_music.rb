class RecommendsMusic

  include ActiveModel::Model
  attr_accessor :title, :message, :recommender_id, :url

  with_options presence: true do
    validates :title
    validates :url
  end

  def save
    recommend = Recommend.create(title: title, message: message, recommender_id: recommender_id)
    music = Music.where(url: url).first_or_initialize
    music.save

    RecommendMusicRelation.create(recommend_id: recommend.id, music_id: music.id)
  end

end