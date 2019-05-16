class CreateEnqueues < ActiveRecord::Migration[5.2]
  def change
    create_table :enqueues do |t|
      t.string :title
      t.string :text
      t.string :type
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
