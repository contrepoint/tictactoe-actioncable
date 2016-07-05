class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :board_id, references: :boards
      t.string :status

      t.references :challenger, references: :users, null: false
      t.references :challenged, references: :users, null: false
      t.string :challenger_user_marker
      t.string :challenged_user_marker

      t.references :active_player, references: :users

      t.references :winner, references: :users
      t.string :winning_marker

      t.timestamps null: false
    end
  end
end
