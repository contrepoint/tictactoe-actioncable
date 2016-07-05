class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.integer :game_id, references: :games
      t.string :state, :default => '-' * 9
      t.timestamps null: false
    end
  end
end
