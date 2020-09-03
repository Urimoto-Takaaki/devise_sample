class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :life
      t.integer :power
      t.string :skill

      t.timestamps
    end
  end
end
