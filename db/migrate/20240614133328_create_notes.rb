class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.text :title
      t.text :body
      t.text :name

      t.timestamps
    end
  end
end
