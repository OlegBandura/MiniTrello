class CreateDashboardLists < ActiveRecord::Migration[5.1]
  def change
    create_table :dashboard_lists do |t|
      t.references :dashboard_id
      t.references :list_id
      t.timestamps
    end
  end
end
