class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.date :date
      t.text :title
      t.text :pr
      t.float :hours
      t.timestamps
    end
  end
end
