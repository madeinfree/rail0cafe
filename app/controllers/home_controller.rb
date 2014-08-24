class HomeController < ApplicationController
	def index
	#first code
		#@home1 = Lesson.where(lv: 1)
		#@home2 = Lesson.where(lv: 2)
		#@home3 = Lesson.where(lv: 3)
		#@home4 = Lesson.where(lv: 4)
	#new code
		#@lesson_group = Lesson.all.group_by(&:lv)
	#new code 2
		@lesson_group = Lesson.all.group_by(&:human_level)
	end
	def show
		@lesson = Lesson.find(params[:id])
	end
end
