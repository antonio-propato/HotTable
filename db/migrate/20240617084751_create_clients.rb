class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone_number
      t.string :email
      t.date :DOB
      t.string :dietary_requirement

      t.timestamps
    end
  end
end
