class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :address
      t.string :mobile
      t.string :email
      t.string :id

      t.timestamps
    end
  end
end
