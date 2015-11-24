class User < ActiveRecord::Base
	belongs_to :parent,   :class_name => 'User'
	has_one    :children, :class_name => 'User', :foreign_key => 'parent_id'
	has_one    :function

	validates :name,
			presence: true,
			length: {minimum: 3, maximum: 20},
			numericality: false

	validates :surname,
			presence: true,
			length: {minimum: 3, maximum: 20},
			numericality: false

	validates :function,
			presence: true
end
