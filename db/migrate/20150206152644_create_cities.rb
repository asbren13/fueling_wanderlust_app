class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :country_name
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
