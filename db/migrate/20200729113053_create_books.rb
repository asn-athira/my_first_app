class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
    	t.string :book_name
    	t.text :book_desc
    	t.timestamps

    end
  end
end
