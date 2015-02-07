class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :suggestion, index: true
    end
    add_foreign_key :comments, :suggestions
  end
end
