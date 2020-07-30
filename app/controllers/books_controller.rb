		class BooksController < ApplicationController
			layout "courses"
		 def index
		 		      @books=Book.all

		 end
           def addbooks
	      @books=Book.all.by_book_name

           end



		 def new
		 		@book=Book.new
		 end
		  def show
			 @book=Book.find(params[:id])
		      @book=Book.all


			 end
            def create
			 	@book=Book.new(book_params)
			 if @book.save
		 		redirect_to @book
		 	else
		 		render 'new'
		 	end
		 end
		 	 private

			 def book_params
		        params.require(:book).permit(:book_name, :book_desc)
			 end

				  
		 end