class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.references :course, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.float :duration
      t.integer :number_question
      t.float :percent
      t.timestamps null: false
    end
  end
end
