class User < ActiveRecord::Base
	belongs_to :parent, :class_name => 'User'
	has_many :children, :class_name => 'User', :foreign_key => 'parent_id'
	belongs_to :function

	scope :last_name_like, -> (name) { where("last_name like ?", name)}

	validates :first_name,
		presence: true,
		length: {minimum: 2, maximum: 25}

	validates :last_name,
		presence: true,
		length: {minimum: 2, maximum: 25}

	def self.function
		if(self.function?)
			function
		else
			"Pas de fonction"
		end
	end

  def display_name
	 u = User.find(self.id)
	 "#{u.first_name} #{self.last_name}"
  end
end
