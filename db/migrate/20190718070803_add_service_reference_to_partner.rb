class AddServiceReferenceToPartner < ActiveRecord::Migration[5.2]
  def change
    add_reference :partners, :service, foreign_key: true
  end
end
