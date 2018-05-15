class CreateClints < ActiveRecord::Migration[5.2]
  def change
    create_table :clints do |t|

      t.timestamps
    end
  end
end
