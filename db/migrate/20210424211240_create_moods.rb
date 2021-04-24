class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.integer :happy_rating
      t.integer :relaxed_rating
      t.integer :calm_rating
      t.integer :confidence_rating
      t.integer :awake_rating
      t.string :journal_entry
      t.belongs_to :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
