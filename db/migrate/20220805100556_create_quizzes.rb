class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end