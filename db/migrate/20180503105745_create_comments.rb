class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :comments
      t.string :project_id

      t.timestamps
    end
  end
end
