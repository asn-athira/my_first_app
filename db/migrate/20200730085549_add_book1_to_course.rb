class AddBook1ToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :book_1, :string
  end
end
