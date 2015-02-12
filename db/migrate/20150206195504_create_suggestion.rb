class CreateSuggestion < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name, default: 'Anonymous'
      t.text :ideas
      t.string :category
      t.belongs_to :city, index: true


    end
    add_foreign_key :suggestions, :cities
  end
end
