class RecommendsMusic

  include ActiveModel::Model
  attr_accessor :title, :message, :url

  with_options presence: true do
    validates :title
    validates :url
  end

  def save
    recommend = Recommend.create(title: title)
    music = Music.create(url: url)

    RecommendMusicRelation.create(recommend_id: recommend.id, music_id: music.id)
  end

end