class CreateSuggestion < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name
      t.text :ideas
      t.belongs_to :city, index: true
    end
    add_foreign_key :suggestions, :cities
  end
end
