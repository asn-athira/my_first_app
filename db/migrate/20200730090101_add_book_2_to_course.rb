class AddBook2ToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :book_2, :string
  end
end
