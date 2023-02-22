class CreateTemples < ActiveRecord::Migration[7.0]
  def change
    create_table :temples do |t|
      t.string :t_name
      t.string :t_lordname
      t.string :t_location
      t.string :t_description
      


      t.timestamps
    end
  end
end
