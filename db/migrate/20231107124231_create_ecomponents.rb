class CreateEcomponents < ActiveRecord::Migration[7.1]
  def change
    create_table :ecomponents do |t|
      t.string :name
      t.string :unity

      t.timestamps
    end
  end
end
