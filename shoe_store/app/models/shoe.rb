class Shoe < ActiveRecord::Base
	validates :color, :presence => true 
	validates_numericality_of :price, greater_than: 0
	validates_numericality_of :size, greater_than: 0
	validates :cover, :presence => true
	belongs_to :category
	belongs_to :company
	acts_as_commentable
	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.gif"
  	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  	def self.avaiable (id)
  		where(category_id:id)
  	end
end
