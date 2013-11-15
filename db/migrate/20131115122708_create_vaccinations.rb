class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table(:vaccinations) { |t|
      t.belongs_to :animal
      t.date :date_vacc
      t.text :notes
      t.float :cost
      t.binary :check

      t.timestamps
    }
  end
end
