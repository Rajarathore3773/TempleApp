class CreateVisitors < ActiveRecord::Migration[7.0]
  def change
    create_table :visitors do |t|

      t.string :v_name
      t.integer:v_age
      t.string :v_email
      t.string :v_govermentid
      t.integer :v_contact  

      t.references :temple, null: false, foreign_key: true
      t.timestamps
    end
  end
end
