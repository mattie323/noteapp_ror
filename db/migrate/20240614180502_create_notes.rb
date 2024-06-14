class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :name
      t.string :nickname
      t.string :feeling
      t.text :message

      t.timestamps
    end
  end
end
