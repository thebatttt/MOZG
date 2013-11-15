class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.text :nickname
      t.date :date_incoming
      t.text :label
      t.text :signs

      t.timestamps
    end
  end
end
