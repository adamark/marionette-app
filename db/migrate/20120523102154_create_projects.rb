class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.boolean :publish
      t.string :kind
      t.boolean :gallery

      t.timestamps
    end
  end
end
