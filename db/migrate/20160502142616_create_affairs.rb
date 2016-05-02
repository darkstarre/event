class CreateAffairs < ActiveRecord::Migration
  def change
    create_table :affairs do |t|
      t.string :title
      t.datetime :datetime
      t.string :address
      t.text :text


      t.timestamps null: false
    end
  end
end
