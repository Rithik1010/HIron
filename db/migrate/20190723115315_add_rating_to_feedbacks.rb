class AddRatingToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :rating, :integer
  end
end
