class User < ActiveRecord::Base
	belongs_to :parent, :class_name => 'User'
	has_many :children, :class_name => 'User', :foreign_key => 'parent_id'
	belongs_to :function

	validates :name,
		presence: true,
		length: {minimum: 2, maximum: 25}

	validates :surname,
		presence: true,
		length: {minimum: 2, maximum: 25}
end
