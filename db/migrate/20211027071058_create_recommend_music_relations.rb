class CreateRecommendMusicRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommend_music_relations do |t|
      t.references :recommend, foreign_key: true
      t.references :music, foreign_key: true
      t.timestamps
    end
  end
end
