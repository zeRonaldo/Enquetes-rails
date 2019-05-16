class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :enqueue, foreign_key: true
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
