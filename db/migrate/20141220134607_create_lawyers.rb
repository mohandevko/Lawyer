class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :lawyer_name
      t.string :city
      t.string :lawyer_code
      t.integer :years_of_experiance
      t.decimal :rating
      t.timestamps
    end
  end
end
