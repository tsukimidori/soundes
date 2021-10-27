class Recommend < ApplicationRecord
  has_many :recommend_music_relations
  has_many :musics, through: :recommend_music_relations
  belongs_to :recommender
end
