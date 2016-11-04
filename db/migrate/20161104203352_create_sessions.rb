class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.string :session
      t.string :duration
      t.string :mood

      t.timestamps null: false
    end
  end
end
