class CreateCourseBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :course_books do |t|
    	t.string :course_id
    	t.text :book_id
    	t.timestamps

    end
  end
end
