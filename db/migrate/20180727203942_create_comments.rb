class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :card, index: true
      t.references :user, index: true
      t.string :comment
      t.timestamps
    end
  end
end
