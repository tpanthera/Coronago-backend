class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :mobile_number, null: false
      t.integer :age, null: false
      t.integer :gender, null: false
      t.timestamps
    end
  end
end
