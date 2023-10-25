class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.date :date
      t.text :status
      t.string :remarks
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
