class CreateDashboardLabels < ActiveRecord::Migration[5.1]
  def change
    create_table :dashboard_labels do |t|
      t.references :dashboard, index: true
      t.references :label, index: true
      t.timestamps
    end
  end
end
