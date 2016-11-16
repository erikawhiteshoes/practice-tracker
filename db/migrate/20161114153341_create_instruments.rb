class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :exercise
      t.string :tempo
      t.string :notes
      t.references :session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
