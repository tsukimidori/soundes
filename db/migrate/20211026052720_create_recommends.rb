class CreateRecommends < ActiveRecord::Migration[6.0]
  def change
    create_table :recommends do |t|
      t.string :title,           null: false
      t.text :message
      t.references :recommender, null: false, foreign_key: true
      t.timestamps
    end
  end
end
