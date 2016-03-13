class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :user
      t.references :exam
      t.references :question
      t.references :answer
      t.float :spent_time
      t.timestamps null: false
    end
  end
end
