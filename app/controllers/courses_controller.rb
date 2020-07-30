		class CoursesController < ApplicationController
			layout "courses"
		 def index
		 		      @courses=Course.all

		 end
		 def addbooks

		 end
		  def courses
		      @courses=Course.all

			 end

		   def new
			 	@course=Course.new
			 end
			 def show
		 @course=Course.find(params[:id])
		 		      @book=Book.all

			
			 end
			 def edit
			 @course=Course.find(params[:id])

			 end


	    def create
			 	@course=Course.new(course_params)
			 if @course.save
		 		redirect_to @course
		 	else
		 		render 'new'
		 	end
		 end
		def update

			 @course=Course.find(params[:id])
			 @course.update(course_params)
			  if @course.save
		 		redirect_to @course
		 	else
		 		render 'new'
		 	end
             @course.update(bookadd_params)
			  if @course.save

			  	render 'index'
		 	else

		 		render 'new'
		 	end

		 end
		 def destroy
			 @course=Course.find(params[:id])
			 @course.destroy
		 	 redirect_to @course

		 end

			 private

			 def course_params
		        params.require(:course).permit(:name, :description)
			 end

			  private

			 def bookadd_params
		        params.require(:course).permit(:book_1, :book_2, :book_3)
			 end

		 end