class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :course, index: true, foreign_key: true
      t.integer :question_type
      t.string :content
      t.timestamps null: false
    end
  end
end
