class CreateLawyerServices < ActiveRecord::Migration
  def change
    create_table :lawyer_services do |t|
      t.string :service_name
      t.string :lawyer_code
      t.string :service_code
      t.decimal :price
      t.timestamps
    end
  end
end
