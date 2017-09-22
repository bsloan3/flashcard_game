class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :category

      t.timestamps
    end
  end
end
