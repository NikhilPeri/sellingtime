class CreateBookableProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :bookable_products do |t|
      
      t.timestamps
    end
  end
end
