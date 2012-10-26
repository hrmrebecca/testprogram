class Addaddress < ActiveRecord::Migration
  def up
    create_table :addresses, force: true do |t|
      t.integer :person_id,   null: false
      t.string  :street_name, null: false
      t.string  :street_name_secondary
      t.string  :city
      t.string  :state_abbr, limit: 2 
      t.string  :zip,        limit: 5
      t.string  :zip_ext,    limit: 4
      
      t.timestamps
    end
    add_index :addresses, :person_id
    add_index :addresses, :street_name
  end

  def down
    drop_table :addresses
  end
end
