class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.float :latitude, null :false
      t.float :longitude, null :false
      t.string :tag, null :false
      t.belongs_to :user
      t.timestamps
    end
  end
end
