class CreateAttachmentCards < ActiveRecord::Migration[5.1]
  def change
    create_table :attachment_cards do |t|
      t.references :attachment, index: true
      t.references :card, index: true
      t.timestamps
    end
  end
end
