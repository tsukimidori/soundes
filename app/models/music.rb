class Music < ApplicationRecord
  has_many :recommend_music_relations
  has_many :recommends, through: :recommend_music_relations

  validates :url, uniqueness: true
end
