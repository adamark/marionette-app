class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :image_uid
      t.integer :project_id
      t.integer :post_id
      t.boolean :main
      t.string :caption

      t.timestamps
    end
  end
end
