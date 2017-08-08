class CreateDetoxes < ActiveRecord::Migration[5.1]
  def change
    create_table :detoxes do |t|
      t.string :drug_name
      t.date :last_time

      t.timestamps
    end
  end
end
