class Section < ApplicationRecord

	has_many :section_edits
	has_many :editors, :through => :section_edits, :class_name => "AdminUser"
    scope :visible, lambda { where(:visible => true)}
	scope :invisible, lambda { where(:visible => false)}
	scope :sorted, lambda { order("sections.position ASC")}
	scope :newest_first, lambda { order("section.creadted_at DESC")}
	end
