class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :project_id
      t.text :comment
      t.string :name

      t.timestamps
    end
  end
end
