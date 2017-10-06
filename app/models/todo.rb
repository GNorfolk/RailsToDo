class Todo < ApplicationRecord
	belongs_to :user

	validates :title, :body, :user_id, presence: true

	validates :title, length: { minimum: 5, maximum: 500, message: "must be between 5 and 500 characters!"}

	validates :body, length: { minimum: 2, maximum: 2000, message: "must be between 2 and 2000 characters!" }

end
