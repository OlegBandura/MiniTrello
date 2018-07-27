class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :cards
      t.references :attachments
      t.timestamps
    end
  end
end
