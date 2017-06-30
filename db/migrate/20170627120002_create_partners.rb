class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :designation
      t.string :email
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
