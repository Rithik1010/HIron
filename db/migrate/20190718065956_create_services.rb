class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :serv_name

      t.timestamps
    end
  end
end
