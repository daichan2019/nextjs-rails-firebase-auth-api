class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false, default: ''
      t.text :body
      t.boolean :is_completed, null: false, default: false

      t.timestamps
    end
  end
end
