class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :user
      t.references :exam
      t.float :score
      t.timestamps null: false
    end
  end
end
