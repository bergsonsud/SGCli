class Group < ActiveRecord::Base
	has_many :customers
	validates_presence_of :name

	scope :honorarios, -> {
    joins('INNER JOIN customers c on groups.id = c.group_id').where("c.honorarios >0").group('groups.id').order('groups.name')
  	}
end
