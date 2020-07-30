class AddBook3ToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :book_3, :string
  end
end
