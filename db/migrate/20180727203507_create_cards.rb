class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.references :lists
      t.string :title, null: false
      t.text :description
      t.references :users
      t.references :attachments
      t.datetime :date
      t.timestamps
    end
  end
end
