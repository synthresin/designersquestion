class Question < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	validates :user_id, presence: true
end
