class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :lv
      t.text :content

      t.timestamps
    end
  end
end
