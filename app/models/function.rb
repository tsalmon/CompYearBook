class Function < ActiveRecord::Base
	belongs_to :user

	validates :name,
			presence: true,
			length: {minimum: 1, maximum: 50}
end
