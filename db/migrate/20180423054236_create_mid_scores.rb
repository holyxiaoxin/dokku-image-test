class CreateMidScores < ActiveRecord::Migration[5.1]
  def change
    create_table :mid_scores do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
