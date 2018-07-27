class CreateAttachmentCards < ActiveRecord::Migration[5.1]
  def change
    create_table :attachment_cards do |t|
      t.references :attachments
      t.references :cards
      t.timestamps
    end
  end
end
