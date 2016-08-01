class LibraryUsersController < ApplicationController
	def index
		@libraries = Library.all
	    current_user # sets @current_user
	end

	def create
		@user = current_user
		@library = Library.find(params[:library_id])
		@user.libraries.push(@library)
		redirect_to user_libraries(@user)
	end

end
