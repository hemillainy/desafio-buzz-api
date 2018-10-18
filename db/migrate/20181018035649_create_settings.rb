class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.integer :brands_limit
      t.boolean :brands_limited
      t.integer :collected_limit
      t.boolean :collected_limited
      t.integer :analytics_limit
      t.boolean :analytics_limited
      t.integer :crm_limit
      t.boolean :crm_limited
      t.boolean :analytics_pro
      t.boolean :dashboards
      t.boolean :historial_search
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
