class CreateChildenrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :childenrolls do |t|
      t.string :name

      t.timestamps
    end
  end
end
