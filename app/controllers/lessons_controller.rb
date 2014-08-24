class LessonsController < ApplicationController
	def index
		@lessons = Lesson.all
	end
	def new
		@lesson = Lesson.new
	end
	def create
		@lesson = Lesson.new(lesson_params)
		if @lesson.save
			redirect_to lessons_url
		else
			render :new
		end
	end
	def show
		@lesson = Lesson.find(params[:id])
	end
	def edit
		@lesson = Lesson.find(params[:id])
	end
	def update
		@lesson = Lesson.find(params[:id])
		if @lesson.update(lesson_params)
			redirect_to lessons_url
		else
			render :edit
		end
	end
	
	private
	def lesson_params
		params.require(:lesson).permit(:title, :lv, :content)
	end
	def set_lesson
		@lesson = Lesson.find(params[:id])
	end
end
