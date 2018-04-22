class CreateLowScores < ActiveRecord::Migration[5.1]
  def change
    create_table :low_scores do |t|
      t.string :game
      t.integer :score

      t.timestamps
    end
  end
end
