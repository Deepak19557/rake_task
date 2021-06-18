class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.boolean :block, :default => false
      t.string  :name
	  t.timestamps
    end
  end
end
