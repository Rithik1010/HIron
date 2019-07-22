class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :partner, foreign_key: true

      t.timestamps
    end
  end
end