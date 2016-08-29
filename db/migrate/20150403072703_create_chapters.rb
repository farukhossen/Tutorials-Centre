class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :sub_category_id
      t.string :name
      t.string :video_link
      t.integer :rating
      t.timestamps
    end
  end
end
