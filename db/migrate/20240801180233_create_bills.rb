class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.decimal :value

      t.timestamps
    end
  end
end
