class CreateScoreFinals < ActiveRecord::Migration
  def change
    create_table :score_finals do |t|
      t.references :course_detail
      t.float :score
      t.timestamps null: false
    end
  end
end
