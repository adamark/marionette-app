class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :handle
      t.string :password_digest

      t.timestamps
    end
  end
end
