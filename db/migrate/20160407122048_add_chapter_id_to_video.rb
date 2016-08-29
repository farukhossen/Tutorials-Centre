class AddChapterIdToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :chapter_id, :integer
  end
end
