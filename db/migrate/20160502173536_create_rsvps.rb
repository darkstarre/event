class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :guest
      t.string :email
      t.text :body
      t.references :affair, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
