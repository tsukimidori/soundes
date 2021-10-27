class RecommendMusicRelation < ApplicationRecord
  belongs_to :recommend
  belongs_to :music
end
