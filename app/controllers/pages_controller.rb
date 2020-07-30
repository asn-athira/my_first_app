	class PagesController < ApplicationController
	 	layout "pages"

	 def about
	 	
	 end
	 def contact

	 end
	 def course_names
      @courses=Course.all

	 end
	 def gallery
	 	
	 end
	 def new
	 end
	

	 
	 end