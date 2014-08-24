# encoding: utf-8
class Lesson < ActiveRecord::Base
	validates :title, :lv, presence: true
	def human_level
		case lv
			when "1" then; "Rails 新手入門指引"
			when "2" then; "Rails 進階與101實做"
			when "3" then; "Rails 實戰分享"
			when "4" then; "番外篇"
		end	
	end
end
