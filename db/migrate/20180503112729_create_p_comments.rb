class CreatePComments < ActiveRecord::Migration[5.2]
  def change
    create_table :p_comments do |t|
      t.string :title
      t.text :comment
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
