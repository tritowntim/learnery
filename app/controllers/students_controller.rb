class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])

		respond_to do |format|
			format.html 
			format.json { render :json => @student } 
			format.xml { render :xml => @student } 
		end
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(params[:student])
		if @student.save
			redirect_to @student
		else
			render :new
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(params[:student])
			redirect_to @student
		else
			render :edit
		end		
	end

end