class AddPartnerIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :partner_id, :integer
  end
end
