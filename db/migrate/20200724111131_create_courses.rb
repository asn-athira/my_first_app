class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
    	t.string :name
    	t.text :description
    	t.string :book_1
    	t.string :book_2
    	t.string :book_3

    	t.timestamps
    end
  end
end
