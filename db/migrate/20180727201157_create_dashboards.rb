class CreateDashboards < ActiveRecord::Migration[5.1]
  def change
    create_table :dashboards do |t|
      t.string :title, null: false
      t.integer :policy
      t.references :user, index: true
      t.references :dashboard_list_id, index: true
      t.timestamps
    end
  end
end
