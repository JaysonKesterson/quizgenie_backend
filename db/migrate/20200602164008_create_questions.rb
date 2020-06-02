class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :answer
      t.integer :quiz_id

      t.timestamps
    end
  end
end
